library(readr)
library(tidyverse)
library(plotly)




migration<-read_csv("migration.csv")

migration1<- migration%>%
  mutate(origin_plus = ifelse(origin=="bay_area"|origin=="puget_sound_area",
                              origin, "other"))%>%
  mutate(dest_plus = ifelse(destinations=="bay_area"|
                              destinations=="puget_sound_area"|
                              destinations =="pdx",
                              destinations, "other"))%>%
  group_by(origin_plus, dest_plus)%>%
  summarize(n = sum(n))

outflow3<- outflow2%>%
  mutate(origin_plus = ifelse(origin_area=="bay_area"|
                             origin_area=="puget_sound_area"|
                              origin_area=="pdx",
                                origin_area, "other"))%>%
  mutate(dest_plus = ifelse(dest_area=="bay_area"|
                              dest_area=="puget_sound_area"|
                              dest_area =="pdx",
                            dest_area, "other"))%>%
  mutate(year = as.integer(year))%>%

  group_by(origin_plus, dest_plus)%>%
  summarize(n = sum(n))
migration2<- rbind(migration1,outflow3)


######################################################################################
#Sankey Plot
p <- plot_ly(
  type = "sankey",
  orientation = "h",
  
  node = list(
    label = c("Bay Area 2015", "Other 2015", "Seattle Area 2015", "Portland Area 2015",
              "Bay Area 2016", "Other 2016", "Seattle Area 2016", "Portland Area 2016"),
    color = c("pink", "blue", "green","orange", "pink", "blue", "green", "orange"),
    pad = 15,
    thickness = 20,
    line = list(
      color = "black",
      width = 0.5
    )
  ),
  
  link = list(
    source = c(0,0,0,0,1,2,2,2,2,3,3,3),
    target = c(4,5,6,7,7,4,5,6,7,4,7,6),
    value =  c(694254,565799,31223,32818,
               840298, 
               22937,322317,351272,41123,
               10838,416085,50628)
  )
) %>% 
  layout(
    title = "Proportions of Migration between 2015 and 2016",
    font = list(
      size = 10
    )
  )
p


############################################################
#Sankey 15 to 16




migration3<- migration%>%
  mutate(origin_plus = ifelse(origin=="bay_area"|origin=="puget_sound_area",
                              origin, "other"))%>%
  mutate(dest_plus = ifelse(destinations=="bay_area"|
                              destinations=="puget_sound_area"|
                              destinations =="pdx",
                            destinations, "other"))%>%
  filter(year==2015)%>%
  group_by(dest_plus, origin_plus)%>%
  summarize(n = sum(n))

outflow4<- outflow2%>%
  mutate(origin_plus = ifelse(origin_area=="bay_area"|
                                origin_area=="puget_sound_area"|
                                origin_area=="pdx",
                              origin_area, "other"))%>%
  mutate(dest_plus = ifelse(dest_area=="bay_area"|
                              dest_area=="puget_sound_area"|
                              dest_area =="pdx",
                            dest_area, "other"))%>%
  filter(year==2015)%>%
  group_by(dest_plus, origin_plus)%>%
  summarize(n = sum(n))
migration4<- rbind(migration3,outflow4)




################################
p <- plot_ly(
  type = "sankey",
  orientation = "h",
  
  node = list(
    label = c("Bay Area 2015", "Other 2015", "Seattle Area 2015", "Portland Area 2015",
              "Bay Area 2016", "Other 2016", "Seattle Area 2016", "Portland Area 2016"),
    color = c("pink", "blue", "green","orange", "pink", "blue", "green", "orange"),
    pad = 15,
    thickness = 20,
    line = list(
      color = "black",
      width = 0.5
    )
  ),
  
  link = list(
    source = c(0,0,0,0,1,2,2,2,2,3,3,3),
    target = c(4,5,6,7,7,4,5,6,7,4,7,6),
    value =  c(96026,84274,4404,6393,
               50340, 
               3175,40098,51644,5304,
               1266,59177,6994)
  )
) %>% 
  layout(
    title = "Proportions of Migration between 2015 and 2016",
    font = list(
      size = 10
    )
  )
p
