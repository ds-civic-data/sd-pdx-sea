library(readr)


ACS_gini_08<- read_csv("~/Desktop/Gini data/gini_08/ACS_08_1YR_B19083_with_ann.csv", skip = 2)
colnames(ACS_gini_08)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_09<- read_csv("~/Desktop/Gini data/gini_09/ACS_09_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_09)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_10<- read_csv("~/Desktop/Gini data/gini_10/ACS_10_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_10)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_11<- read_csv("~/Desktop/Gini data/gini_11/ACS_11_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_11)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_12<- read_csv("~/Desktop/Gini data/gini_12/ACS_12_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_12)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_13<- read_csv("~/Desktop/Gini data/gini_13/ACS_13_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_13)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_14<- read_csv("~/Desktop/Gini data/gini_14/ACS_14_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_14)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_15<- read_csv("~/Desktop/Gini data/gini_15/ACS_15_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_15)<- c("id", "id2", "county", "gini", "margin_error")
ACS_gini_16<- read_csv("~/Desktop/Gini data/gini_16/ACS_16_1YR_B19083_with_ann.csv", skip = 2) 
colnames(ACS_gini_16)<- c("id", "id2", "county", "gini", "margin_error")


ACS_gini_08$year <- 2008
ACS_gini_09$year <- 2009
ACS_gini_10$year <- 2010
ACS_gini_11$year <- 2011
ACS_gini_12$year <- 2012
ACS_gini_13$year <- 2013
ACS_gini_14$year <- 2014
ACS_gini_15$year <- 2015
ACS_gini_16$year <- 2016


ACS_gini<- bind_rows(ACS_gini_08, ACS_gini_09, ACS_gini_10, 
          ACS_gini_11, ACS_gini_12, ACS_gini_13,
          ACS_gini_14, ACS_gini_15, ACS_gini_16)
ACS_gini<- ACS_gini%>%
    filter(county=="Clackamas County, Oregon"| 
             county=="Multnomah County, Oregon"|
             county== "Washington County, Oregon")%>%
    separate(county, into = c("county", "Count", "OR"))%>%
    select(-Count, -OR)

ggplot(ACS_gini, aes(x = year, y = gini, color = county))+
  geom_smooth()


write.csv(ACS_gini, "ACS_gini.csv")
######################################################################################
#Median Age Cleaning 
ACS_agesex_08<- read_csv("~/Desktop/ACS_age/ACS_08_agesex.csv", skip = 2)
colnames(ACS_agesex_08)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_09<- read_csv("~/Desktop/ACS_age/ACS_09_agesex.csv", skip = 2) 
colnames(ACS_agesex_09)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_10<- read_csv("~/Desktop/ACS_age/ACS_10_agesex.csv", skip = 2) 
colnames(ACS_agesex_10)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_11<- read_csv("~/Desktop/ACS_age/ACS_11_agesex.csv", skip = 2) 
colnames(ACS_agesex_11)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_12<- read_csv("~/Desktop/ACS_age/ACS_12_agesex.csv", skip = 2) 
colnames(ACS_agesex_12)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_13<- read_csv("~/Desktop/ACS_age/ACS_13_agesex.csv", skip = 2) 
colnames(ACS_agesex_13)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_14<- read_csv("~/Desktop/ACS_age/ACS_14_agesex.csv", skip = 2) 
colnames(ACS_agesex_14)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_15<- read_csv("~/Desktop/ACS_age/ACS_15_agesex.csv", skip = 2) 
colnames(ACS_agesex_15)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")
ACS_agesex_16<- read_csv("~/Desktop/ACS_age/ACS_16_agesex.csv", skip = 2) 
colnames(ACS_agesex_16)<- c("id", "id2", "county", "median_age", "margin_error", "median_age_male", "me_m", "median_age_female", "me_f")


ACS_agesex_08$year <- 2008
ACS_agesex_09$year <- 2009
ACS_agesex_10$year <- 2010
ACS_agesex_11$year <- 2011
ACS_agesex_12$year <- 2012
ACS_agesex_13$year <- 2013
ACS_agesex_14$year <- 2014
ACS_agesex_15$year <- 2015
ACS_agesex_16$year <- 2016

ACS_agesex<- bind_rows(ACS_agesex_08, ACS_agesex_09, ACS_agesex_10, 
                     ACS_agesex_11, ACS_agesex_12, ACS_agesex_13,
                     ACS_agesex_14, ACS_agesex_15, ACS_agesex_16)
ACS_agesex<- ACS_agesex%>%
  filter(county=="Clackamas County, Oregon"| 
           county=="Multnomah County, Oregon"|
           county== "Washington County, Oregon")%>%
  separate(county, into = c("county", "Count", "OR"))%>%
  select(-Count, -OR)

ggplot(ACS_agesex, aes(x = year, y = median_age, color = county))+
  geom_smooth()

write.csv(ACS_agesex, "ACS_agesex.csv")
######################################################################################
#Migration Data
