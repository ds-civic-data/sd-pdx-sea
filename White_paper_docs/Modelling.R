setwd("~/sd-pdx-sea/White_paper_docs")
modeldata4<- read_csv("modeldata4.csv")
#################################
#### Notes


#################################################################################
### Modelling Gini
##################################################################################




#################################################################################
# #Models for everyone
# modeldata4$housav_log<-log(modeldata4$avg_house)
# modeldata4$mage_log<- log(modeldata4$median_age)
# modeldata4$housm_log<-log(modeldata4$med_house)
# modeldata4$tchb_exp<-log((modeldata4$tech_biz))^50
# modeldata4$biz_exp<-(modeldata4$business)^-200
# modeldata4$agi_log<-(log(modeldata4$agi))


mod0<- lm(log(gini) ~mult
          +log(avg_house)
          +log(med_house)
          +log(agi), 
          data = modeldata4)
mod0_sum<- summary(mod0)


mod1<- lm(log(gini) ~mult
          +log(avg_house)
          +log(med_house)
          +log(n), 
          data = modeldata4)
mod1_sum<- summary(mod1)

mod2<- lm(log(gini) ~mult+wash
          +abs(med_housing_change)
          +log(avg_house)
          +log(med_house)
          +log(agi), 
          data = modeldata4)
mod2_sum<- summary(mod2)


mod3<- lm(log(gini) ~mult+wash
          +abs(med_housing_change)
          +log(avg_house)
          +log(med_house)
          +log(n), 
          data = modeldata4)
mod3_sum<- summary(mod3)
#################################################################################
#Models for Multnomah
# # use df model_mult
# model_mult$age_exp<- .36+(model_mult$median_age)^-2
# model_mult$housav_exp<-(model_mult$avg_house)^-7
# model_mult$tech_biz_exp<-(model_mult$tech_biz)^50
# modm0<- lm(gini~  housav_exp+age_exp+tech_biz_exp+avg, data = model_mult)
# mod_sum<- summary(modm0)
# 
# #################################################################################
# #Models for Not-Multnomah
# model_notmult$age_exp<- (model_notmult$median_age)^7
# model_notmult$class_diff_exp<- (model_notmult$class_diff)^-5
# 
# modnm0<- lm(gini ~ age_exp+blue_prop + tech_biz+ business+class_diff_exp, 
#           data = model_notmult)
# mod_sum<- summary(modnm0)


#################################################################################
#Modelling Housing price
##################################################################################
###Notes
#gini- exponential upward
#avg_house - exponential up, linear by county
#tech_biz - inverse exponential 
#
modeldata4$depress<- ifelse(modeldata4$year==2008|modeldata4$year==2009, 1,0)

hmod0<- lm(med_house ~ log(gini)+
             median_age+
             wash+
             mult+
             med_housing_change+
             log(agi), 
            data = modeldata4)
hmod0_sum<- summary(hmod0)


hmod1<- lm(med_house ~ log(gini)+
             median_age+
             wash+
             mult+
             med_housing_change+
             log(n), 
           data = modeldata4)
hmod1_sum<- summary(hmod1)

hmod3<- lm(avg_house ~
             wash+
             mult+
             avg_housing_change+
             log(agi), 
           data = modeldata4)
hmod3_sum<- summary(hmod3)


hmod4<- lm(avg_house ~ 
             wash+
             mult+
             avg_housing_change+
             log(n), 
           data = modeldata4)
hmod4_sum<- summary(hmod4)



modeldata4$tech_biz_exp<-(modeldata4$tech_biz)^-2
modeldata4$service_exp<-(modeldata4$service)^-2

hmod5<- lm(med_housing_change ~
             log(blue_prop)+
             log(service)+
             mult+
             med_house+
             log(agi), 
           data = modeldata4)
hmod5_sum<- summary(hmod5)

hmod6<- lm(med_housing_change ~
             log(blue_prop)+
             log(service)+
             mult+
             med_house+
             log(n), 
           data = modeldata4)
hmod6_sum<- summary(hmod6)


# 
# 
# hmod7<- lm(avg_housing_change ~
#              log(service)+
#              mult+
#              med_house+
#              log(agi) +
#              depress, 
#            data = modeldata4)
# hmod7_sum<- summary(hmod7)
# 
# hmod7<- lm(avg_housing_change ~ 
#              log(service)+
#              mult+
#              med_house+
#              log(n)+
#              depress, 
#            data = modeldata4)
# hmod8_sum<- summary(hmod7)

#######################################################################################
modeldata7<-modeldata4

prediction<-predict(lm(log(gini) ~mult
                    +log(avg_house)
                    +log(med_house)
                    +log(agi), 
                    data = modeldata4))
  
modeldata7$gini_log_predicted<- prediction
modeldata7$gini_log <- log(modeldata7$gini)


plottingdata1 <-  data.table::melt(data = modeldata7,id.vars = c("year", "county"),
                       measure.vars = c("gini_log","gini_log_predicted"))

ggplot(plottingdata1, aes(x = year, y =value, color = variable ))+
  geom_smooth(se = FALSE, span = .5)+
  theme_classic()+
  facet_wrap(~county)+
  labs(y = "Natural Log of Gini Coefficient", 
       x = "Year",
       title = "Predicted vs. Actual \nNatural Log of Gini Coefficient 2008 to 2016",
       color = "Actual vs. Predicted")+
  scale_color_manual(values = c("dodgerblue3", "darkorange3"))
#######################################################################################
modeldata8<-modeldata4

prediction<-(lm(med_house ~ log(gini)+
                          median_age+
                          wash+
                          mult+
                          med_housing_change+
                          log(agi), 
                        data = modeldata4))

modeldata8$mhouse_predicted<- c(368384.6,367390.6, 376715.6, 377557.7, 389667.5,
                                382490.7, NA, 379707.3, 409802.0, 417249.3, 408237.0,
                                405636.7, NA, 373206.6, 371330.0, 379505.3, 378680.0,
                                386855.9, 379311.9, 382523.6, 377041.7)

modeldata8<-modeldata8%>%
  unnest(mhouse_predicted)


plottingdata2 <-  data.table::melt(data = modeldata8,id.vars = c("year", "county"),
                                   measure.vars = c("med_house","mhouse_predicted"))

ggplot(plottingdata2, aes(x = year, y =value, color = variable ))+
  geom_smooth(se = FALSE, span =.7)+
  theme_classic()+
  facet_wrap(~county)+
  labs(y = "Median House Value", x = "Year", 
       title = "Predicted vs. Actual \nMedian House Value 2008 to 2016", 
       color = "Actual vs. Predicted")+
  scale_color_manual(values = c("dodgerblue3", "darkorange3"))


#######################################################################################
modeldata9<-modeldata4

prediction<-predict(lm(med_housing_change ~
                         log(blue_prop)+
                         log(service)+
                         mult+
                         med_house+
                         log(agi), 
                       data = modeldata4))

modeldata9$mhouse_chng_predicted<- c(prediction[1:6],NA, prediction[7:11],
                                NA,prediction[12:19])  


plottingdata3 <-  data.table::melt(data = modeldata9,id.vars = c("year", "county"),
                                   measure.vars = c("med_housing_change","mhouse_chng_predicted"))

ggplot(plottingdata3, aes(x = year, y =value, color = variable))+
  geom_smooth(se = FALSE, span =.7)+
  theme_classic()+
  #facet_wrap(~county)
  labs(y = "Change in Median House Value Over the Last Year", 
       x = "Year", 
       title = "Predicted vs. Actual Change in \nMedian House Value 2008 to 2016", 
       color = "Actual vs. Predicted")+
  scale_color_manual(values = c("dodgerblue3", "darkorange3", "orchid"))




