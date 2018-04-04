################## Read In
library(tidyverse)
library(readr)
Puma_p <- read.csv("~/Downloads/csv_por-2/ss16por.csv", stringsAsFactors=FALSE)
Puma_h <- read.csv("~/Downloads/csv_hor/ss16hor.csv")
######### Cleaning

### Filtering for portland area

#People
Puma_p <- Puma_p %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

#Housing
Puma_h <- Puma_h %>%
  filter(ST==41)%>%
  filter(PUMA==1301|PUMA ==1302|PUMA ==1303|PUMA==1305|PUMA ==1314)

### Choosing vairables
Puma_p <- Puma_p%>%
  select(SERIALNO, ST, AGEP, PUMA, CIT, CITWP, 
         NWAB, NWAV, NWLA, NWLK, WAGP, FOD1P,FOD2P, 
         MIGSP, OCCP, PINCP, POBP, RAC1P, RAC2P, RAC3P)

Puma_h <- Puma_h%>%
  select(SERIALNO, ST, PUMA, NP, TYPE, CONP, RNTP, HINCP, WORKSTAT)

### Joining
#Pums<- left_join(Puma_p, Puma_h, by = c("PUMA", "ST"))
