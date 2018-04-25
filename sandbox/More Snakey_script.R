
library(readr)
library(tidyverse)
library(riverplot)

migration<-read_csv("migration.csv")
outflow2_pdx<-read_csv("outflow2_pdx.csv")


migration<- migration%>%
  select(origin, destinations, n, year)
outflow2_pdx<-outflow2_pdx%>%
  rename(origin = origin_area)%>%
  rename(destinations = dest_area)%>%
  select(origin,destinations,year, n)

migration2<- rbind(as.data.frame(outflow2_pdx), as.data.frame(migration))

migration3<- migration2%>%
  mutate(origin = ifelse(origin=="bay_area"|origin=="puget_sound_area",
                         origin, "other"))%>%
  mutate(destinations = ifelse(destinations=="bay_area"|destinations=="puget_sound_area"|destinations=="pdx",destinations, "other"))%>%
  group_by(origin, destinations, year)%>%
  summarize(n = sum(n))%>%
  arrange(year)

#######################################################################################  


migration_river<-migration3%>%
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

#Styles
node_labels0<- c(bay_area_1 ="Bay Area 2008", 
other_1 = "Other 2008",
puget_sound_area_1 = "Seattle 2008",
bay_area_2 ="Bay Area 2009", 
other_2 = "Other 2009",
puget_sound_area_2 = "Seattle 2009",
pdx_2 = "Portland 2009",
bay_area_3 ="Bay Area 2010", 
other_3 = "Other 2010",
puget_sound_area_3 = "Seattle 2010",
pdx_3 = "Portland 2010",
bay_area_4 ="Bay Area 2011", 
other_4 = "Other 2011",
puget_sound_area_4 = "Seattle 2011",
pdx_4 = "Portland 2011",
bay_area_5 ="Bay Area 2012", 
other_5 = "Other 2012",
puget_sound_area_5 = "Seattle 2012",
pdx_5 = "Portland 2012",
bay_area_6 ="Bay Area 2013", 
other_6 = "Other 2013",
puget_sound_area_6 = "Seattle 2013",
pdx_6 = "Portland 2013",
bay_area_7 ="Bay Area 2014", 
other_7 = "Other 2014",
puget_sound_area_7 = "Seattle 2014",
pdx_7 = "Portland 2014",
bay_area_8 ="Bay Area 2015", 
other_8 = "Other 2015",
puget_sound_area_8 = "Seattle 2015",
pdx_8 = "Portland 2015",
bay_area_9 ="Bay Area 2016", 
other_9 = "Other 2016",
puget_sound_area_9 = "Seattle 2016",
pdx_9 = "Portland 2016")



styles0<- list(bay_area_1 = list(col = "darkorange",lty = 5),
         puget_sound_area_1 = list(col = "hotpink4",lty = 5),
         other_1 = list(col = "pink3",lty = 5), 
         bay_area_2 = list(col = "darkorange",lty = 5),
         puget_sound_area_2 = list(col = "hotpink4",lty = 5),
         other_2 = list(col = "pink3",lty = 5),
         pdx_2 = list(col = "skyblue4",lty = 5),
         bay_area_3 = list(col = "darkorange",lty = 5),
         puget_sound_area_3 = list(col = "hotpink4",lty = 5),
         other_3 = list(col = "pink3",lty = 5),
         pdx_3 = list(col = "skyblue4",lty = 5),
         bay_area_4 = list(col = "darkorange",lty = 5),
         puget_sound_area_4 = list(col = "hotpink4",lty = 5),
         other_4 = list(col = "pink3",lty = 5),
         pdx_4 = list(col = "skyblue4",lty = 5),
         bay_area_5 = list(col = "darkorange",lty = 5),
         puget_sound_area_5 = list(col = "hotpink4",lty = 5),
         other_5 = list(col = "pink3",lty = 5),
         pdx_5 = list(col = "skyblue4",lty = 5),
         bay_area_6 = list(col = "darkorange",lty = 5),
         puget_sound_area_6 = list(col = "hotpink4",lty = 5),
         other_6 = list(col = "pink3",lty = 5),
         pdx_6 = list(col = "skyblue4",lty = 5),
         bay_area_7 = list(col = "darkorange",lty = 5),
         puget_sound_area_7 = list(col = "hotpink4",lty = 5),
         other_7 = list(col = "pink3",lty = 5),
         pdx_7 = list(col = "skyblue4",lty = 5),
         bay_area_8 = list(col = "darkorange",lty = 5),
         puget_sound_area_8 = list(col = "hotpink4",lty = 5),
         other_8 = list(col = "pink3",lty = 5),
         pdx_8 = list(col = "skyblue4",lty = 5),
         bay_area_9 = list(col = "darkorange",lty = 5),
         puget_sound_area_9 = list(col = "hotpink4",lty = 5),
         other_9 = list(col = "pink3",lty = 5),
         pdx_9 = list(col = "skyblue4",lty = 5))
###############################################################################################
#fixing curves


curveseg<- function (x0, x1, y0, y1, width = 5, nsteps = 50, col = "#ffcc0066", 
          grad = NULL, lty = 5, form = c("sin", "line"), fix.pdf = 5) 
{
  w <- width
  if (!is.null(grad)) {
    grad <- colorRampPaletteAlpha(grad)(nsteps)
  }
  else {
    grad <- rep(col, nsteps)
  }
  form <- match.arg(form, c("sin", "line"))
  if (form == "sin") {
    xx <- seq(-pi/2, pi/2, length.out = nsteps)
    yy <- y0 + (y1 - y0) * (sin(xx) + 1)/2
    xx <- seq(x0, x1, length.out = nsteps)
  }
  if (form == "line") {
    xx <- seq(x0, x1, length.out = nsteps)
    yy <- seq(y0, y1, length.out = nsteps)
  }
  for (i in 1:(nsteps - 1)) {
    polygon(c(xx[i], xx[i + 1], xx[i + 1], xx[i]), c(yy[i], 
                                                     yy[i + 1], yy[i + 1] + w, yy[i] + w), col = grad[i], 
            border = grad[i], lty = fix.pdf)
    lines(c(xx[i], xx[i + 1]), c(yy[i], yy[i + 1]), lty = lty)
    lines(c(xx[i], xx[i + 1]), c(yy[i] + w, yy[i + 1] + 
                                   w), lty = lty)
  }
}




#####################################################################################################
#Plotting
migriver<- makeRiver(nodes0,edges0,node_labels = node_labels0, node_styles = styles0)

riverplot(migriver, add_mid_points = FALSE,
          default_style = styles0)

###########################################################################################################

