##################################################################################
### Taxlot Data
taxlot_data <- read_csv("~/Desktop/taxlot_data.csv")
taxlot_data1<- taxlot_data%>%
  select(TOTALVAL, year, COUNTY)%>%
  filter(TOTALVAL>= 10000)%>%
  filter(year<=2016&year>=2008)%>%
  rename(county = COUNTY)%>%
  group_by(county, year)%>%
  summarize(med_house = median(TOTALVAL), avg_house = mean(TOTALVAL))

##################################################################################
### Migration Data(COMING SOON TO CODES NEAR YOU)
##################################################################################
#Occupation Data
pdx_counties_occupations<- read_csv("pdx_counties_occupations.csv")

pdx_count_class<- pdx_counties_occupations%>%
  select(county, total_pop, job_class, n_county_class, prop_county_class, year)%>%
  unique()
pdx_count_class1<-pdx_count_class%>%
  spread(key = job_class, value =prop_county_class)%>%
  select(-n_county_class)%>%
  mutate(blue_collar = ifelse(is.na(blue_collar)==TRUE, 0, blue_collar))%>%
  mutate(white_collar = ifelse(is.na(white_collar)==TRUE, 0, white_collar))%>%
  group_by(county, total_pop, year)%>%
  summarize(blue_prop = max(blue_collar), white_prop = max(white_collar))%>%
  filter(year>=2008& year<= 2016)

pdx_count_type<- pdx_counties_occupations%>%
  select(county, total_pop, job_type, n_county_type, prop_county_type, year)%>%
  unique()
pdx_count_type1<- pdx_count_type%>%
  spread(key = job_type, value =prop_county_type)%>%
  select(county:civil_servant, healthcare:tech,-n_county_type)%>%
  mutate(business = ifelse(is.na(business)==TRUE, 0, business))%>%
  mutate(civil_servant = ifelse(is.na(civil_servant)==TRUE, 0, civil_servant))%>%
  mutate(healthcare = ifelse(is.na(healthcare)==TRUE, 0, healthcare))%>%
  mutate(production = ifelse(is.na(production)==TRUE, 0, production))%>%
  mutate(service = ifelse(is.na(service)==TRUE, 0, service))%>%
  mutate(tech = ifelse(is.na(tech)==TRUE, 0, tech))%>%
  group_by(county, total_pop, year)%>%
  summarize(business = max(business), civil_servant = max(civil_servant),
            healthcare=  max(healthcare), production = max(production),
            service = max(service), tech = max(tech))%>%
  filter(year>=2008& year<= 2016)



##################################################################################
#ACS read in

ACS_gini<- read_csv("ACS_gini.csv")
ACS_agesex<- read_csv("ACS_agesex.csv")

##################################################################################
#Model data al together

modeldata0<- left_join(ACS_gini, taxlot_data1)
modeldata1<- left_join(modeldata0, ACS_agesex, by = c("county", "year"))
modeldata2<- left_join(modeldata1, pdx_count_class1)
modeldata3<- left_join(modeldata2, pdx_count_type1)

modeldata4<- modeldata3%>%
  mutate(class_diff = blue_prop-white_prop, tech_biz = tech+business)%>%
  mutate(mult = ifelse(county == "Multnomah", 1,0))%>%
  mutate(wash = ifelse(county == "Washington", 1,0))%>%
  mutate(clack = ifelse(county == "Clackamas", 1,0))%>%
  arrange(county, year)


modeldata5<- modeldata4%>%
  mutate(year = paste("yr", as.character(year), sep = "_"))%>%
  spread(key = year, value = med_house)
modeldata5[is.na(modeldata5)]<-0

modeldata5<-modeldata5%>%
  group_by(county)%>%
  summarize(yrs_2009= max(yr_2009)-max(yr_2008),
            yrs_2010 = max(yr_2010)-max(yr_2009),
            yrs_2011 = max(yr_2011)-max(yr_2010),
            yrs_2012 = max(yr_2012)-max(yr_2011),
            yrs_2013 = max(yr_2013)-max(yr_2012),
            yrs_2014 = max(yr_2014)-max(yr_2013),
            yrs_2015 = max(yr_2015)-max(yr_2014),
            yrs_2016 = max(yr_2016)-max(yr_2015),
            yrs_2008 = max(yr_2008)/10)%>%
  gather(year, med_housing_change, yrs_2008, yrs_2009, yrs_2010, yrs_2011, 
                                   yrs_2012, yrs_2013, yrs_2014, yrs_2015, yrs_2016)%>%
  separate(year, into = c("trash", "year"))%>%
  mutate(year = as.integer(year))%>%
  select(-trash)  

modeldata6<- modeldata4%>%
  mutate(year = paste("yr", as.character(year), sep = "_"))%>%
  spread(key = year, value = avg_house)
modeldata6[is.na(modeldata6)]<-0

modeldata6<-modeldata6%>%
  group_by(county)%>%
  summarize(yrs_2009= max(yr_2009)-max(yr_2008),
            yrs_2010 = max(yr_2010)-max(yr_2009),
            yrs_2011 = max(yr_2011)-max(yr_2010),
            yrs_2012 = max(yr_2012)-max(yr_2011),
            yrs_2013 = max(yr_2013)-max(yr_2012),
            yrs_2014 = max(yr_2014)-max(yr_2013),
            yrs_2015 = max(yr_2015)-max(yr_2014),
            yrs_2016 = max(yr_2016)-max(yr_2015),
            yrs_2008 = max(yr_2008)/10)%>%
  gather(year, avg_housing_change, yrs_2008, yrs_2009, yrs_2010, yrs_2011, 
         yrs_2012, yrs_2013, yrs_2014, yrs_2015, yrs_2016)%>%
  separate(year, into = c("trash", "year"))%>%
  mutate(year = as.integer(year))%>%
  select(-trash)  

modeldata4<- left_join(modeldata4, modeldata5)
modeldata4<- left_join(modeldata4, modeldata6)

write.csv(modeldata4, "modelling_data.csv")
##################################################################################
#Spliting by county
model_mult<- modeldata4%>%
  filter(county=="Multnomah")

model_notmult<- modeldata4%>%
  filter(county!="Multnomah")

model_clack<- modeldata4%>%
  filter(county=="Clackamas")

model_wash<- modeldata4%>%
  filter(county=="Washington")


##################################################################################
#Plotting to get a sense of models

ploter<- function(dat, exo){
  ggplot(dat, aes(x = exo, y = gini, color = county))+
    geom_point()+
    geom_smooth(se = FALSE, span = 1)
}

hploter<- function(dat, exo){
  ggplot(dat, aes(x = exo, y = log(med_house)))+
    geom_point()+
    geom_smooth(se = FALSE, span = 1)
}



##### plots and notes on possible modelling
ploter(modeldata4, modeldata4$median_age)
#grouped by county, exponential
# looks like a sin wave?

ploter(modeldata4, modeldata4$med_house)
#looks linear by county
ploter(modeldata4, modeldata4$avg_house)
#linear, grouped
ploter(modeldata4, modeldata4$blue_prop)
#linear-ish by county
ploter(modeldata4, modeldata4$white_prop)
#also no good, grouped by county though
ploter(modeldata4, modeldata4$tech_biz)
#negative linear (modeldata4, unexpected), grouped by county
ploter(modeldata4, modeldata4$class_diff)
#upwards linear
ploter(modeldata4, modeldata4$service)
ploter(modeldata4, modeldata4$tech)
ploter(modeldata4, modeldata4$business)
ploter(modeldata4, modeldata4$civil_servant)
ploter(modeldata4, modeldata4$healthcare)



hploter(modeldata4, modeldata4$median_age)
#grouped by county, exponential
# looks like a sin wave?

hploter(modeldata4, modeldata4$gini)
#looks linear by county
hploter(modeldata4, modeldata4$med_house)
#linear, grouped
hploter(modeldata4, modeldata4$blue_prop)
#linear-ish by county
hploter(modeldata4, modeldata4$white_prop)
#also no good, grouped by county though
hploter(modeldata4, modeldata4$tech_biz)
#negative linear (modeldata4, unexpected), grouped by county
hploter(modeldata4, modeldata4$class_diff)
#upwards linear
hploter(modeldata4, modeldata4$service)
hploter(modeldata4, modeldata4$tech)
hploter(modeldata4, modeldata4$business)
hploter(modeldata4, modeldata4$civil_servant)
hploter(modeldata4, modeldata4$healthcare)


