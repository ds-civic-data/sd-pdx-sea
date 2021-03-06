######################################################################################
## Title: Counting Migration by State (PUMS) and other exploration
## Author: Josephine Baker
## Created: 04/04/2018
######################################################################################
### Libraries

library(tidyverse)
library(readr)


### Reading In Files

# This doc is too large to upload to github, you can download it and 
# change this import for your own use
Pums_p <- read.csv("~/Downloads/csv_por-2/ss16por.csv")

# This doc is on github so this live should work 
Pums_h <- read.csv("~/sd-pdx-sea/Raw Data/ss16hor.csv")


### Filtering for portland area

#People
Puma_p <- Pums_p %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

#Housing
Puma_h <- Pums_h %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

### Choosing variables
Puma_p <- Puma_p%>%
  select(SERIALNO, ST, AGEP, PUMA, CIT, CITWP, 
         NWAB, NWAV, NWLA, NWLK, WAGP, FOD1P,FOD2P, 
         MIGSP, OCCP, PINCP, POBP, RAC1P, RAC2P, RAC3P)

Puma_h <- Puma_h%>%
  select(SERIALNO, ST, PUMA, NP, TYPE, CONP, RNTP, HINCP, WORKSTAT)


#############################################################################
#######Just Portland
### Function to count migration from each state (by PUMA code)
state_migr_count <- function(x){
  state_migr<- Puma_p%>%
    filter(MIGSP==x)%>%
    summarise(state_migr_n = n())
  state_migr_pc<-state_migr$state_migr_n/count(Puma_p)
  state_migr_n_projected_total<-state_migr_pc*639863
  print(state_migr$state_migr_n) 
  print(state_migr_pc)
  print(state_migr_n_projected_total)
}


## Counting Californians
state_migr_count(6)

## Counting Washintonians
state_migr_count(53)

#############################################################################
#######Multnomah and Washington county
Puma_allp_p <- Pums_p %>%
  filter(ST==41)%>%
  filter(PUMA==1301|
           PUMA ==1302|
           PUMA ==1303|
           PUMA==1305|
           PUMA ==1314|
           PUMA ==1316|
           PUMA ==1317|
           PUMA ==1318|
           PUMA ==1319|
           PUMA ==1320|
           PUMA ==1321|
           PUMA ==1322|
           PUMA ==1323|
           PUMA ==1324)

#Housing
Puma_allp_h <- Pums_h %>%
  filter(ST==41)%>%
  filter(PUMA==1301|
           PUMA ==1302|
           PUMA ==1303|
           PUMA==1305|
           PUMA ==1314|
           PUMA ==1316|
           PUMA ==1317|
           PUMA ==1318|
           PUMA ==1319|
           PUMA ==1320|
           PUMA ==1321|
           PUMA ==1322|
           PUMA ==1323|
           PUMA ==1324)

### Choosing variables
Puma_allp_p <- Puma_allp_p%>%
  select(SERIALNO, ST, AGEP, PUMA, CIT, CITWP, 
         NWAB, NWAV, NWLA, NWLK, WAGP, FOD1P,FOD2P, 
         MIGSP, OCCP, PINCP, POBP, RAC1P, RAC2P, RAC3P)

Puma_allp_h <- Puma_allp_h%>%
  select(SERIALNO, ST, PUMA, NP, TYPE, CONP, RNTP, HINCP, WORKSTAT)

state_migr_count_allp <- function(x){
  state_migr<- Puma_allp_p%>%
    filter(MIGSP==x)%>%
    summarise(state_migr_n = n())
  state_migr_pc<-state_migr$state_migr_n/count(Puma_p)
  state_migr_n_projected_total<-state_migr_pc*639863
  print(state_migr$state_migr_n) 
  print(state_migr_pc)
  print(state_migr_n_projected_total)
}


## Counting Californians
state_migr_count_allp(6)

## Counting Washintonians
state_migr_count_allp(53)

####################################################################################
### Exploratory Visualization function (of wages and age)
area_plot<- function(x){
  ggplot(filter(Puma_p, PUMA==x), aes(x = AGEP, y = WAGP))+
    geom_point()
}

## N&NE
area_plot('01301')

## E
area_plot('01302')

## SE
area_plot('01303')

## Central East
area_plot('01305')

## NW&SW
area_plot('01314')

##Together
ggplot(Puma_p, aes(x = AGEP, y = WAGP, color = PUMA))+
  geom_point(alpha = .05)+
  facet_wrap(~PUMA)

### Wage by state of origin
# With OR
ggplot(filter(Puma_p, is.na(MIGSP)==FALSE), aes(x = AGEP, y = WAGP, color = MIGSP))+
  geom_point(alpha = .3)+
  facet_wrap(~PUMA)
# Without OR
ggplot(filter(Puma_p, is.na(MIGSP)==FALSE&MIGSP!='041'), aes(x = AGEP, y = WAGP, color = MIGSP))+
  geom_point(alpha = .3)+
  facet_wrap(~PUMA)
### Just California and Washington
CA_WA_OR<- Puma_p%>%
  filter(MIGSP=='006'|MIGSP=='041'|MIGSP=='053')

ggplot(CA_WA_OR, aes(x = AGEP, y = WAGP, color = MIGSP))+
  geom_point(alpha = .3)+
  facet_wrap(PUMA~MIGSP)


ggplot(CA_WA_OR, aes(x = WAGP, y = MIGSP, color = MIGSP))+
  geom_point(alpha = .01)


CA_WA_OR1<- CA_WA_OR%>%
  mutate(WAGP = as.integer(WAGP))%>%
  filter(is.na(MIGSP)==FALSE)%>%
  filter(is.na(WAGP)==FALSE)%>%
  mutate(MIGSP = as.character(MIGSP))%>%
  group_by(MIGSP)%>%
  summarize(high_inc = sum(ifelse(WAGP>=99999, 1,0)), 
            count = n(), 
            high_incpc = high_inc/count)
