######################################################################################
## Title: Reading in Taxlot Data
## Author: Josephine Baker
## Created: 04/17/2018
######################################################################################
library(tidyverse)
library(rgdal)
library(sp)
library(ggmap)
library(lubridate)
library(raster)
library(maptools)
library(sf)


#clears environment
#rm(list = ls())


# Must set working directory to this folder before running
setwd("~/Desktop/taxlots")

taxlots0<- "."
ogrListLayers(".")
ogrInfo(".", layer = "taxlots")
taxlots1<- readOGR(".", layer = "taxlots")
str(taxlots1)


file.exists("~/Desktop/taxlots/taxlots.shp")
