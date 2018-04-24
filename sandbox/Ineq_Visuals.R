######################################################################################
## Title: Counting Migration by State (PUMS) and other exploration
## Author: Josephine Baker
## Created: 04/22/2018
##########################################
library(tidyverse)
library(readr)
library(ineq)
library(ggplot2)


source("Measuring_inequality.R")

#gini_stats1<- gini_stats0%>%
  

#Not done yet
ggplot(gini_stats0, aes(x = gini_nam, y = gini_p, fill = gini_nam))+
  geom_bar(stat = "identity")+
  #geom_point(alpha = .5, size = 5)+
  geom_text(aes(label = gini_nam), size = 3, angle = 90, 
            color = "white")+
  theme(legend.position="none")+
  labs(y = "Gini Coefficient")

  