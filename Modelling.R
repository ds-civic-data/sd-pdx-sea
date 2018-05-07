source("Modelling_Data_Cleaning.R")
#################################
#### Notes


#################################################################################
### Modelling Gini
##################################################################################




#################################################################################
#Models for everyone
modeldata4$housav_log<-log(modeldata4$avg_house)
modeldata4$mage_log<- log(modeldata4$median_age)
modeldata4$housm_log<-log(modeldata4$med_house)
modeldata4$tchb_exp<-log((modeldata4$tech_biz))^50
modeldata4$biz_exp<-(modeldata4$business)^-200



mod0<- lm((gini)^3 ~mult+wash+mage_log+abs(class_diff)+abs(med_housing_change)+biz_exp, 
          data = modeldata4)
summary(mod0)
step(mod0, text = "LRT")
confint(mod0)
exp(confint(mod0))
residuals(mod0, type="deviance")



mod1<- glm((gini)^3 ~mult+wash+mage_log+abs(class_diff)+abs(med_housing_change)+biz_exp, 
           data = modeldata4)
summary(mod1)
confint(mod1)
#################################################################################
#Models for Multnomah
# use df model_mult
model_mult$age_exp<- .36+(model_mult$median_age)^-2
model_mult$housav_exp<-(model_mult$avg_house)^-7
model_mult$tech_biz_exp<-(model_mult$tech_biz)^50
modm0<- lm(gini~  housav_exp+age_exp+tech_biz_exp+avg, data = model_mult)
summary(modm0)

#################################################################################
#Models for Not-Multnomah
model_notmult$age_exp<- (model_notmult$median_age)^7
model_notmult$class_diff_exp<- (model_notmult$class_diff)^-5

modnm0<- lm(gini ~ age_exp+blue_prop + tech_biz+ business+class_diff_exp, 
          data = model_notmult)
summary(modnm0)


#################################################################################
#Modelling Housing price
##################################################################################
###Notes
#gini- exponential upward
#avg_house - exponential up, linear by county
#tech_biz - inverse exponential 
#
modeldata4$housav_log<-log(modeldata4$avg_house)
modeldata4$mage_log<- log(modeldata4$median_age)
modeldata4$housm_log<-log(modeldata4$med_house)
modeldata4$blue_log<-log(modeldata4$blue_prop)
modeldata4$white_exp<- (modeldata4$white_prop)^10
modeldata4$tchb_exp<-(log(modeldata4$tech_biz))^10
modeldata4$gini_log<-(log(modeldata4$gini))
modeldata4$gini_exp<-(modeldata4$gini)^50
# modeldata4$cd_exp<-(abs(modeldata4$class_diff))^5
# #modeldata4$biz_exp<-(modeldata4$business)^-200
modeldata4$tchb_exp<-(log(modeldata4$tech_biz))^-75

hmod0<- lm(med_house ~ gini_exp+wash+mult+white_exp+med_housing_change+tchb_exp, 
            data = modeldata4)
summary(hmod0)

modeldata4$gini_exp<-(modeldata4$gini)^50
modeldata4$gini_log<-(log(modeldata4$gini))^-10
modeldata4$cd_log<-log(abs(modeldata4$class_diff))
modeldata4$ahc_log<-log(abs(modeldata4$avg_housing_change))
modeldata4$mage_exp<-(modeldata4$median_age)^-20
modeldata4$tchb_exp<-(log(modeldata4$tech_biz))^-75

hmod1<- lm(avg_house ~ wash + mult + white_exp + tchb_exp +class_diff+
             avg_housing_change + gini_exp, data = modeldata4)
summary(hmod1)

