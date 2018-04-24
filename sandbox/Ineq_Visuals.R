######################################################################################
## Title: Counting Migration by State (PUMS) and other exploration
## Author: Josephine Baker
## Created: 04/04/2018
##########################################
library(tidyverse)
library(readr)
library(ineq)
library(ggplot2)


source("Measuring_inequality.R")

#gini_stats1<- gini_stats0%>%
  

#Not done yet
ggplot(gini_stats0, aes(x = gini_nam, y = gini_p, color = gini_nam))+
  geom_point(alpha = .5, size = 5)+
  geom_text(aes(label = gini_nam), size = 2, color = "black")+
  theme(legend.position="none")+
  labs(y = "Gini Coefficient")

  