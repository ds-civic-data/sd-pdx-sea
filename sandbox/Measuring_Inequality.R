######################################################################################
## Title: Measuring inequality
## Author: Josephine Baker
## Created: 04/10/2018
######################################################################################
### Libraries

library(tidyverse)
library(readr)
library(ineq)


### Reading In Files

# This doc is too large to upload to github, you can download it and 
# change this import for your own use
Pums_p <- read.csv("~/Downloads/csv_por-2/ss16por.csv")

# This doc is on github so this live should work 
Pums_h <- read.csv("~/sd-pdx-sea/Raw Data/ss16hor.csv")


### Filtering for portland area

#People
Puma_p <- Puma_p %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

#Housing
Puma_h <- Puma_h %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

### Choosing variables
Puma_p <- Puma_p%>%
  select(SERIALNO, ST, AGEP, PUMA, CIT, CITWP, 
         NWAB, NWAV, NWLA, NWLK, WAGP, FOD1P,FOD2P, 
         MIGSP, OCCP, PINCP, POBP, RAC1P, RAC2P, RAC3P)

Puma_h <- Puma_h%>%
  select(SERIALNO, ST, PUMA, NP, TYPE, CONP, RNTP, HINCP, WORKSTAT)
################################################################################
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



####################################################################################
Puma_allp_p1 <- Puma_allp_p%>%
  filter(is.na(WAGP)==FALSE)

#### Function for Gini coefficienct
ginico<- function(x){
  print(ineq(x$WAGP, type = "Gini"))
}

# Gini all people
Puma_allp_p1 <- Puma_allp_p%>%
  filter(is.na(WAGP)==FALSE)
ginico(Puma_allp_p1)

### Ginico function by area
ginico_nbhd<- function(x,y){
  f <- x%>%
    filter(is.na(WAGP)==FALSE)%>%
    filter(WAGP!=0)%>%
    filter(PUMA==y)
  print(ineq(f$WAGP, type = "Gini"))
}

## N&NE
ginico_nbhd(Puma_allp_p, 1301)
## E
ginico_nbhd(Puma_allp_p, 1302)
## SE
ginico_nbhd(Puma_allp_p, 1303)
## Central East
ginico_nbhd(Puma_allp_p, 1305)
## NW&SW
ginico_nbhd(Puma_allp_p, 1314)
## Rest of Multnomah
ginico_nbhd(Puma_allp_p, 1316)
## SE Clackamas - Demascus City
ginico_nbhd(Puma_allp_p, 1317)
## NW Clackamas - OR City, Milwaukie, Happy Valley
ginico_nbhd(Puma_allp_p, 1318)
## NW Clackamas - Lake Oswego, West Linn, Wilsonville
ginico_nbhd(Puma_allp_p, 1319)
## SE Washington (county)
ginico_nbhd(Puma_allp_p, 1320)
## W Washington (county)
ginico_nbhd(Puma_allp_p, 1321)
## Central Washington - Hillboro City
ginico_nbhd(Puma_allp_p, 1322)
## Central Washington - Beaverton&Aloha
ginico_nbhd(Puma_allp_p, 1323)
## NE Washington - (county)
ginico_nbhd(Puma_allp_p, 1323)

###################################################################################
###Testing by comparison with PUMS Household data
ginico_nbhd_h<- function(x,y){
  f <- x%>%
    filter(is.na(HINCP)==FALSE)%>%
    filter(HINCP!=0)%>%
    filter(PUMA==y)
  print(ineq(f$HINCP, type = "Gini"))
}


## N&NE
ginico_nbhd_h(Puma_allp_h, 1301)
## E
ginico_nbhd_h(Puma_allp_h, 1302)
## SE
ginico_nbhd_h(Puma_allp_h, 1303)
## Central East
ginico_nbhd_h(Puma_allp_h, 1305)
## NW&SW
ginico_nbhd_h(Puma_allp_h, 1314)
## Rest of Multnomah
ginico_nbhd_h(Puma_allp_h, 1316)
## SE Clackamas - Demascus City
ginico_nbhd_h(Puma_allp_h, 1317)
## NW Clackamas - OR City, Milwaukie, Happy Valley
ginico_nbhd_h(Puma_allp_h, 1318)
## NW Clackamas - Lake Oswego, West Linn, Wilsonville
ginico_nbhd_h(Puma_allp_h, 1319)
## SE Washington (county)
ginico_nbhd_h(Puma_allp_h, 1320)
## W Washington (county)
ginico_nbhd_h(Puma_allp_h, 1321)
## Central Washington - Hillboro City
ginico_nbhd_h(Puma_allp_h, 1322)
## Central Washington - Beaverton&Aloha
ginico_nbhd_h(Puma_allp_h, 1323)
## NE Washington - (county)
ginico_nbhd_h(Puma_allp_h, 1323)
######################################################################################
### Creating comparison data frame
gini_h<- c(
  ginico_nbhd_h(Puma_allp_h, 1301),
  ginico_nbhd_h(Puma_allp_h, 1302),
  ginico_nbhd_h(Puma_allp_h, 1303),
  ginico_nbhd_h(Puma_allp_h, 1305),
  ginico_nbhd_h(Puma_allp_h, 1314),
  ginico_nbhd_h(Puma_allp_h, 1316),
  ginico_nbhd_h(Puma_allp_h, 1317),
  ginico_nbhd_h(Puma_allp_h, 1318),
  ginico_nbhd_h(Puma_allp_h, 1319),
  ginico_nbhd_h(Puma_allp_h, 1320),
  ginico_nbhd_h(Puma_allp_h, 1321),
  ginico_nbhd_h(Puma_allp_h, 1322),
  ginico_nbhd_h(Puma_allp_h, 1323),
  ginico_nbhd_h(Puma_allp_h, 1323))

gini_p<- c(## N&NE
ginico_nbhd(Puma_allp_p, 1301),
## E
ginico_nbhd(Puma_allp_p, 1302),
## SE
ginico_nbhd(Puma_allp_p, 1303),
## Central East
ginico_nbhd(Puma_allp_p, 1305),
## NW&SW
ginico_nbhd(Puma_allp_p, 1314),
## Rest of Multnomah
ginico_nbhd(Puma_allp_p, 1316),
## SE Clackamas - Demascus City
ginico_nbhd(Puma_allp_p, 1317),
## NW Clackamas - OR City, Milwaukie, Happy Valley
ginico_nbhd(Puma_allp_p, 1318),
## NW Clackamas - Lake Oswego, West Linn, Wilsonville
ginico_nbhd(Puma_allp_p, 1319),
## SE Washington (county)
ginico_nbhd(Puma_allp_p, 1320),
## W Washington (county)
ginico_nbhd(Puma_allp_p, 1321),
## Central Washington - Hillboro City
ginico_nbhd(Puma_allp_p, 1322),
## Central Washington - Beaverton&Aloha
ginico_nbhd(Puma_allp_p, 1323),
## NE Washington - (county)
ginico_nbhd(Puma_allp_p, 1323))

gini_nam<- c("N&NE Portland", "E Portland",
             "SE Portland", "Central East Portland", 
             "NW&SW Portland", "Rest of Multnomah", 
             "SE Clackamas - Demascus City",
             "NW Clackamas - OR City, Milwaukie, Happy Valley",
             "NW Clackamas - Lake Oswego, West Linn, Wilsonville", 
             "SE Washington (county)", "W Washington (county)", 
             "Central Washington - Hillboro City",
             "Central Washington - Beaverton&Aloha", "NE Washington - (county)")
PUMA <- c(1301, 1302, 1303, 1305, 1314, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324)

gini_stats0<- data.frame(gini_nam, gini_p, gini_h,PUMA,
                            row.names = NULL)



