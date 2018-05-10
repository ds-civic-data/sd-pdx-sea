
library(readr)
library(tidyverse)
library(riverplot)

setwd("~/sd-pdx-sea/documents/White_paper_docs")
migration<-read_csv("migration.csv")
outflow2_pdx<-read_csv("outflow2s_pdx.csv")


migration<- migration%>%
  select(origin, destinations, n, year)
outflow2_pdx<-outflow2_pdx%>%
  rename(origin = origin_area)%>%
  rename(destinations = dest_area)%>%
  select(origin,destinations,year, n)

migration2<- rbind(as.data.frame(outflow2_pdx), as.data.frame(migration))
migration2<- migration2%>%
  group_by(origin, destinations, year)%>%
  summarize(n = max(n))%>%
  ungroup()

write.csv(migration2, "corrected_migration.csv")
migration2_1<- read_csv("corrected_migration.csv")
migration3<- migration2_1%>%
  #mutate(origin = ifelse(origin=="bay_area"|origin=="puget_sound_area"|origin=="pdx",
  #                       origin, "other"))%>%
  mutate(destinations = ifelse(destinations=="bay_area"|destinations=="puget_sound_area"|destinations=="pdx",destinations, "other"))%>%
  group_by(origin, destinations, year)%>%
  summarize(n = sum(n))%>%
  arrange(year)%>%
  ungroup()

#######################################################################################  


migration_river<-migration3%>%
  filter(destinations!="other")%>%
  filter(origin!="other")%>%
  filter(origin== "LA"|origin== "WA"|origin== "CA"|origin== "AZ"|
           origin== "pdx"|origin== "bay_area"|origin== "puget_sound_area")%>%
  mutate(match = ifelse(destinations == origin, 1,0))%>%
  filter(match==0)%>%
  mutate(num = as.integer(year)%%2007)%>%
  mutate(originyr = paste(origin,num,sep = "_"))%>%
  mutate(destyr = paste(destinations,num+1, sep = "_"))

migration_river$ID<- seq.int(nrow(migration_river))


dest_unq<-data.frame(unique(migration_river$originyr))
dest_unq2 <-data.frame(unique(migration_river$destyr))
dest_unq3<-rbind(rename(dest_unq,ID = unique.migration_river.originyr.), 
                 rename(dest_unq2,ID = unique.migration_river.destyr.))
dest_unq3<- unique(dest_unq3)

dest1<- data.frame(dest_unq3)%>%
  mutate(x = str_extract(ID, "[1-9]"))%>%
  arrange(ID)%>%
  arrange(x)

#######################################################################################  
#Nodes
nodes0<- data.frame(ID = as.character(dest1$ID),
                    x = as.integer(dest1$x))
#edges
N1<- migration_river$originyr
N2<- migration_river$destyr
Value <-migration_river$n
ID<- migration_river$ID
edges0<- data.frame(N1, N2, Value, ID, stringsAsFactors = FALSE)

#Styles (NEED TO BE FIXED)
node_labels0<- c(AZ_1  = "AZ 2008",
                 bay_area_1 ="Bay Area 2008", 
                 CA_1 = "CA 2008",
                 LA_1 = "Las Angeles 2008",
                 pdx_1 = "Portland 2008",
                 puget_sound_area_1 = "Seattle 2008",
                 WA_1 = "WA 2008",
                 AZ_2  = "AZ 2009",
                 bay_area_2 ="Bay Area 2009", 
                 CA_2 = "CA 2009",
                 LA_2 = "Las Angeles 2009",
                 pdx_2 = "Portland 2009",
                 puget_sound_area_2 = "Seattle 2009",
                 WA_2 = "WA 2009",
                 AZ_3  = "AZ 2010",
                 bay_area_3 ="Bay Area 2010", 
                 CA_3 = "CA 2010",
                 LA_3 = "Las Angeles 2010",
                 pdx_3 = "Portland 2010",
                 puget_sound_area_3 = "Seattle 2010",
                 WA_3 = "WA 2010",
                 AZ_4  = "AZ 2011",
                 bay_area_4 ="Bay Area 2011", 
                 CA_4 = "CA 2011",
                 LA_4 = "Las Angeles 2011",
                 pdx_4 = "Portland 2011",
                 puget_sound_area_4 = "Seattle 2011",
                 WA_4 = "WA 2011",
                 AZ_5  = "AZ 2012",
                 bay_area_5 ="Bay Area 2012", 
                 CA_5 = "CA 2012",
                 LA_5 = "Las Angeles 2012",
                 pdx_5 = "Portland 2012",
                 puget_sound_area_5 = "Seattle 2012",
                 WA_5 = "WA 2012",
                 AZ_6  = "AZ 2013",
                 bay_area_6 ="Bay Area 2013", 
                 CA_6 = "CA 2013",
                 LA_6 = "Las Angeles 2013",
                 pdx_6 = "Portland 2013",
                 puget_sound_area_6 = "Seattle 2013",
                 WA_6 = "WA 2013",
                 AZ_7  = "AZ 2014",
                 bay_area_7 ="Bay Area 2014", 
                 CA_7 = "CA 2014",
                 LA_7 = "Las Angeles 2014",
                 pdx_7 = "Portland 2014",
                 puget_sound_area_7 = "Seattle 2014",
                 WA_7 = "WA 2014",
                 AZ_8  = "AZ 2015",
                 bay_area_8 ="Bay Area 2015", 
                 CA_8 = "CA 2015",
                 LA_8 = "Las Angeles 2015",
                 pdx_8 = "Portland 2015",
                 puget_sound_area_8 = "Seattle 2015",
                 WA_8 = "WA 2015",
                 bay_area_1 ="Bay Area 2016",
                 pdx_1 = "Portland 2016",
                 puget_sound_area_1 = "Seattle 2016")



styles0<- list(AZ_1 = list(col = "goldenrod1", lty = 5),
               bay_area_1 = list(col = "lightpink3",lty = 5),
               CA_1 = list(col = "chocolate",lty = 5),
               LA_1 = list(col = "hotpink4",lty = 5),
               puget_sound_area_1 = list(col = "mediumpurple4",lty = 5),
               pdx_1 = list(col = "skyblue4",lty = 5),
               WA_1 = list(col = "salmon4",lty = 5),
               AZ_2 = list(col = "goldenrod1", lty = 5),
               bay_area_2 = list(col = "lightpink3",lty = 5),
               CA_2 = list(col = "chocolate",lty = 5),
               LA_2 = list(col = "hotpink4",lty = 5),
               puget_sound_area_2 = list(col = "mediumpurple4",lty = 5),
               pdx_2 = list(col = "skyblue4",lty = 5),
               WA_2 = list(col = "salmon4",lty = 5),
               AZ_3 = list(col = "goldenrod1", lty = 5),
               bay_area_3 = list(col = "lightpink3",lty = 5),
               CA_3 = list(col = "chocolate",lty = 5),
               LA_3 = list(col = "hotpink4",lty = 5),
               puget_sound_area_3 = list(col = "mediumpurple4",lty = 5),
               pdx_3 = list(col = "skyblue4",lty = 5),
               WA_3 = list(col = "salmon4",lty = 5),
               AZ_4 = list(col = "goldenrod1", lty = 5),
               bay_area_4 = list(col = "lightpink3",lty = 5),
               CA_4 = list(col = "chocolate",lty = 5),
               LA_4 = list(col = "hotpink4",lty = 5),
               puget_sound_area_4 = list(col = "mediumpurple4",lty = 5),
               pdx_4 = list(col = "skyblue4",lty = 5),
               WA_4 = list(col = "salmon4",lty = 5),
               AZ_5 = list(col = "goldenrod1", lty = 5),
               bay_area_5 = list(col = "lightpink3",lty = 5),
               CA_5 = list(col = "chocolate",lty = 5),
               LA_5 = list(col = "hotpink4",lty = 5),
               puget_sound_area_5 = list(col = "mediumpurple4",lty = 5),
               pdx_5 = list(col = "skyblue4",lty = 5),
               WA_5 = list(col = "salmon4",lty = 5),
               AZ_6 = list(col = "goldenrod1", lty = 5),
               bay_area_6 = list(col = "lightpink3",lty = 5),
               CA_6 = list(col = "chocolate",lty = 5),
               LA_6 = list(col = "hotpink4",lty = 5),
               puget_sound_area_6 = list(col = "mediumpurple4",lty = 5),
               pdx_6 = list(col = "skyblue4",lty = 5),
               WA_6 = list(col = "salmon4",lty = 5),
               AZ_7 = list(col = "goldenrod1", lty = 5),
               bay_area_7 = list(col = "lightpink3",lty = 5),
               CA_7 = list(col = "chocolate",lty = 5),
               LA_7 = list(col = "hotpink4",lty = 5),
               puget_sound_area_7 = list(col = "mediumpurple4",lty = 5),
               pdx_7 = list(col = "skyblue4",lty = 5),
               WA_7 = list(col = "salmon4",lty = 5),
               AZ_8 = list(col = "goldenrod1", lty = 5),
               bay_area_8 = list(col = "lightpink3",lty = 5),
               CA_8 = list(col = "chocolate",lty = 5),
               LA_8 = list(col = "hotpink4",lty = 5),
               puget_sound_area_8 = list(col = "mediumpurple4",lty = 5),
               pdx_8 = list(col = "skyblue4",lty = 5),
               WA_8 = list(col = "salmon4",lty = 5),
               bay_area_9 = list(col = "lightpink3",lty = 5),
               puget_sound_area_9 = list(col = "mediumpurple4",lty = 5),
               pdx_9 = list(col = "skyblue4",lty = 5))

##########################################################
#Plotting
migriver<- makeRiver(nodes0,edges0
          ,node_labels = node_labels0
          ,node_styles = styles0)

#riverplot(migriver, add_mid_points = FALSE
  #      ,default_style = styles0, srt = 0, xscale = 1, nodewidth = 1.2)


###########################################################################################################


