######################################################################################
## Title: Modelling Gini Coefficiencts
## Author: Josephine Baker
## Created: 04/12/2018
######################################################################################

oc_count<- Puma_allp_p%>%
  group_by(PUMA, OCCP)%>%
  summarize(N = n())%>%
  filter(is.na(OCCP)==FALSE)%>%
  arrange(desc(N))
oc_count1<- left_join(oc_count, gini_stats0)

#OCCP COde LIst:
# 430 = Miscellaneous Managers
# 3060 = Doctors
# 4760 = Salesperson
# 2200 = PostSecondary Teachers
# 2100 = Lawyer/Judicial Workers
# 5700 = Administrative Assistants
# 5240 = Customer Service
# 4020 = Cooks
# 9130 = Drivers
# 1020 = Software Development
# 1530 = Engineers
# 3255 = Nurses
# 10 = CEOs
# 4700 = Retail Supervisors
# 800 = Accountants




ggplot(filter(oc_count1, N>=100), aes(x = gini_nam, y = N, color = as.character(OCCP)))+
  geom_point(alpha = .3)




b<-Puma_allp_p%>%
  filter(is.na(CIT)==FALSE)%>%
  group_by(PUMA)%>%
  summarize(pop = n(), 
            avg_age = mean(AGEP), 
            born = sum(ifelse(CIT!=1&CIT!=3, 1,0)), 
            born_pc = born/pop,
            or_p = sum(ifelse(POBP==41,1,0)),
            or_pc = or_p/pop)
            




