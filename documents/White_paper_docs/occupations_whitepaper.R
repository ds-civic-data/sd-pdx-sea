

library(tidyverse)


pdx_occupations <- read.csv("~/sd-pdx-sea/Raw Data/pdx_occupations.csv")
pdx_counties_occupations <- read.csv("~/sd-pdx-sea/Raw Data/pdx_counties_occupations.csv")
sf_occupations <- read.csv("~/sd-pdx-sea/Raw Data/sf_occupations.csv")
sf_counties_occupations <- read.csv("~/sd-pdx-sea/Raw Data/sf_counties_occupations.csv")
sea_occupations <- read.csv("~/sd-pdx-sea/Raw Data/sea_occupations.csv")
sea_counties_occupations <- read.csv("~/sd-pdx-sea/Raw Data/sea_counties_occupations.csv")


great_theme <- theme(axis.text.x = element_text(angle = 90))


#white/blue proportion collar by pdx county
pdx_class_county <- pdx_counties_occupations %>%
  mutate(year = as.integer(year)) %>%
  ggplot(aes(x=year, y=prop_county_class, col=job_class)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  great_theme+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Portland Occupation Distribution by County")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))


#sector by pdx county
pdx_sector_county <- pdx_counties_occupations %>%
  mutate(year = as.numeric(year)) %>%
  ggplot(aes(x=year, y = prop_county_type, col = job_type)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Industry",
       title = "Portland Occupation Distribution by County")


#white/blues collar proportion pdx
pdx_class <- pdx_occupations %>%
  mutate(year=as.integer(year)) %>%
  ggplot(aes(x=year,y=job_class_prop, col=job_class)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Portland Occupation Distribution")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))

#sector prop pdx
pdx_sector <- pdx_occupations %>%
  mutate(year=as.integer(year)) %>%
  ggplot(aes(x=year, y=job_type_prop, col=job_type)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Portland Occupation Distribution")


#white/blue proportion collar by sf county
sf_class_county <- sf_counties_occupations %>%
  ggplot(aes(x=year, y=prop_county_class, col=job_class)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Bay Area Occupation Distribution by County")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))


#sector by sf county
sf_sector_county <- sf_counties_occupations %>%
  ggplot(aes(x=year, y = prop_county_type, col = job_type)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Bay Area Occupation Distribution by County")


#white/blues collar proportion sf
sf_class <- sf_occupations %>%
  ggplot(aes(x=year,y=job_class_prop, col=job_class)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Bay Area Occupation Distribution")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))


#sector prop sf
sf_sector <- sf_occupations %>%
  ggplot(aes(x=year, y=job_type_prop, col=job_type)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Bay Area Occupation Distribution")


#white/blue proportion collar by sea county
sea_class_county <- sea_counties_occupations %>%
  ggplot(aes(x=year, y=prop_county_class, col=job_class)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Seattle Area Occupation Distribution by County")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))


#sector by sea county
sea_sector_county <- sea_counties_occupations %>%
  ggplot(aes(x=year, y = prop_county_type, col = job_type)) +
  geom_smooth(se=F) +
  facet_wrap(~county) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Seattle Area Occupation Distribution by County")


#white/blues collar proportion sea
sea_class<- sea_occupations %>%
  ggplot(aes(x=year,y=job_class_prop, col=job_class)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Seattle Area Occupation Distribution")+
  scale_color_manual(values = c("dodgerblue2", "hotpink3"))


#sector prop sea
sea_sector<-sea_occupations %>%
  ggplot(aes(x=year, y=job_type_prop, col=job_type)) +
  geom_smooth(se=F) +
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "Year",
       y = "Proportion Occupation Type",
       colour = "Job Type",
       title = "Seattle Area Occupation Distribution")

