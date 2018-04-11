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
Puma_p <- read.csv("~/Downloads/csv_por-2/ss16por.csv")

# This doc is on github so this live should work 
Puma_h <- read.csv("~/sd-pdx-sea/Raw Data/ss16hor.csv")


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



####################################################################################
Puma_p1 <- Puma_p%>%
  filter(is.na(WAGP)==FALSE)

#### Function for Gini coefficienct
ginico<- function(x){
  print(ineq(x$WAGP, type = "Gini"))
}

# Gini all people
Puma_p1 <- Puma_p%>%
  filter(is.na(WAGP)==FALSE)
ginico(Puma_p1)

### Ginico function by area
ginico_nbhd<- function(x,y){
  x <- x%>%
    filter(is.na(WAGP)==FALSE)%>%
    filter(PUMA==y)
  print(ineq(x$WAGP, type = "Gini"))
}

## N&NE
ginico_nbhd(Puma_p, '01301')

## E
ginico_nbhd(Puma_p, '01302')

## SE
ginico_nbhd(Puma_p, '01303')

## Central East
ginico_nbhd(Puma_p, '01305')

## NW&SW
ginico_nbhd(Puma_p, '01314')






