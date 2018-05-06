


taxlot_data <- read_csv("~/Desktop/taxlot_data.csv")
taxlot_data1<- taxlot_data%>%
  select(TOTALVAL, year, COUNTY)%>%
  filter(year<=2016&year>=2008)%>%
  rename(county = COUNTY)%>%
  group_by(county, year)%>%
  summarize(med_house = median(TOTALVAL))

ACS_gini<- ACS_gini <- read_csv("ACS_gini.csv")

modeldata0<- left_join(ACS_gini, taxlot_data1)
