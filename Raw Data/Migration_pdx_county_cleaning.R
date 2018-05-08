



aggregatr <- function(df) {
  nudf <- df %>%
    group_by(origin_area, dest_area) %>%
    summarise(n = sum(n1)) %>%
    arrange(desc(n))
}





county_pdx_inflow_0809 <- read_csv("Raw Data/migration_data/county_pdx_inflow_0809.csv")
county_pdx_inflow_0910 <- read_csv("Raw Data/migration_data/county_pdx_inflow_0910.csv")
county_pdx_inflow_1011 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1011.csv")
county_pdx_inflow_1112 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1112.csv")
county_pdx_inflow_1213 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1213.csv")
county_pdx_inflow_1314 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1314.csv")
county_pdx_inflow_1415 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1415.csv")
county_pdx_inflow_1516 <- read_csv("Raw Data/migration_data/county_pdx_inflow_1516.csv")

county_pdx_inflow_0809$year <- 2008 
county_pdx_inflow_0910$year <- 2009 
county_pdx_inflow_1011$year <- 2010
county_pdx_inflow_1112$year <- 2011
county_pdx_inflow_1213$year <- 2012
county_pdx_inflow_1314$year <- 2013 
county_pdx_inflow_1415$year <- 2014
county_pdx_inflow_1516$year <- 2015

b<- colnames(county_pdx_inflow_1516)

colnames(county_pdx_inflow_0809)<- b
colnames(county_pdx_inflow_0910)<- b
colnames(county_pdx_inflow_1011)<- b
colnames(county_pdx_inflow_1112)<- b
colnames(county_pdx_inflow_1213)<- b
colnames(county_pdx_inflow_1314)<- b
colnames(county_pdx_inflow_1415)<- b
colnames(county_pdx_inflow_1516)<- b

LIST<- list(county_pdx_inflow_0809, 
     county_pdx_inflow_0910,  
     county_pdx_inflow_1011,
     county_pdx_inflow_1112, 
     county_pdx_inflow_1213,
     county_pdx_inflow_1314, 
     county_pdx_inflow_1415,
     county_pdx_inflow_1516)
inflow<- do.call("rbind", LIST)




inflow1<- inflow%>%
  mutate(y1_countyfips = as.numeric(y1_countyfips))%>%
  mutate(y2_countyfips = as.numeric(y2_countyfips))%>%
  mutate(y1_statefips = as.numeric(y1_statefips))%>%
  mutate(y2_statefips = as.numeric(y2_statefips))

inflow1 <- inflow1%>%
  filter((y2_statefips == 41 & y2_countyfips %in% c(51, 67, 5)) | 
           (y2_statefips == 53 & y2_countyfips == 11))%>%
  filter(y1_countyfips!=51&
           y1_countyfips!=76&
         y1_countyfips!=5&
           y1_countyfips!=11)%>%
  filter(y1_statefips!=41)%>%
  filter((y1_statefips == 53 & y1_countyfips == 11)==FALSE)%>%
  group_by(y2_countyfips, year)%>%
  summarize(n= sum(n1), agi = sum(agi))

inflow2<- inflow1%>%
  mutate(county = ifelse(y2_countyfips==51, "Multnomah",
                         ifelse(y2_countyfips==67, "Washington",
                                ifelse(y2_countyfips==11, "Clark", "Clackamas"))))%>%
  filter(county!= "Clark")

write.csv(inflow2, "inflow_county.csv")



