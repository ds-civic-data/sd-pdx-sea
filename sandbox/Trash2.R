######################################################################################
## Title: 
## Author: Josephine Baker
## Created: 04/18/2018
######################################################################################

library(ineq)
library(tidyverse)
library(readr)

Aggregate_out<-filter(bay_puget_outflows_0809, 
                      dest_area =="pdx" )

filter_OR_bind<- function(df){
  c<- filter(df, dest_area =="pdx")
  Aggregate_out<- rbind(c, Aggregate_out)
}


dflist<- list(bay_puget_outflows_0910,
            bay_puget_outflows_1011,
            bay_puget_outflows_1213,
            bay_puget_outflows_1415,
            bay_puget_outflows_1516)

lapply(dflist, function(df){
  c<- filter(df, dest_area =="pdx")
  Aggregate_out<- rbind(c, Aggregate_out)
})


###################################################################
#Grouping PUMS into counties
Pums_county1<- Puma_allp_p%>%
  mutate(countyname=ifelse(PUMA %in% 1301:1316,"Multnomah County",
                            ifelse(PUMA %in% 1317:1319, "Clackamas County",
                                   "Washinton County")))


tech_jl<-  1005:1520
#uincludes some social sciences
sci_jl<-  1600:1900
med_jl<-  3000:3540
police_jl<-  3700:3850
busi_fin_jl <- 510:950

Pums_county1<- Pums_county1%>%
  mutate(field = ifelse(OCCP%in%tech_jl, "Tech",
                      ifelse(OCCP%in%sci_jl, "Science",
                      ifelse(OCCP%in%med_jl, "Medicine",
                      ifelse(OCCP%in%police_jl, "Law Enforcment",
                      ifelse(OCCP%in%busi_fin_jl, "Business and Finance", NA))))))


  
  
  
Pums_county2<- Pums_county1%>%
  filter(is.na(AGEP)==FALSE&AGEP!=0)%>%
  filter(is.na(WAGP)==FALSE&WAGP!=0)%>%
  filter(is.na(field)==FALSE)%>%
  group_by(countyname)%>%
  summarize(N = n(),
            avg_age = mean(AGEP), 
            avg_wag = mean(WAGP),
            gini = ineq(WAGP, type = "Gini"),
            racen = sum(ifelse(RAC1P!=1|RAC2P!=1|RAC3P!=1, 1, 0)),
            racepct = racen/N,
            techpct = sum(ifelse(field=="Tech",1,0))/N,
            scipct = sum(ifelse(field=="Science",1,0))/N,
            medpct = sum(ifelse(field=="Medicine",1,0))/N,
            policpct = sum(ifelse(field=="Law Enforcment",1,0))/N,
            finpct = sum(ifelse(field=="Business and Finance",1,0))/N,
  )

Pums_county3<- Pums_county1%>%
  filter(is.na(AGEP)==FALSE&AGEP!=0)%>%
  filter(is.na(WAGP)==FALSE&WAGP!=0)%>%
  group_by(countyname)%>%
  summarize(N = n(),
            avg_age = mean(AGEP), 
            avg_wag = mean(WAGP),
            gini = ineq(WAGP, type = "Gini"),
            racen = sum(ifelse(RAC1P!=1|RAC2P!=1|RAC3P!=1, 1, 0)),
            racepct = racen/N,
  )
