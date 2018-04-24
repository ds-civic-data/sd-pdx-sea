migration_river<-migration3%>%
  mutate(num = as.integer(year)%%2007)%>%
  mutate(originyr = paste(origin,num))%>%
  mutate(destyr = paste(destinations,num+1))

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

nodes0<- data.frame(ID = as.character(dest1$ID),
                    x = as.integer(dest1$x))
N1<- migration_river$originyr
N2<- migration_river$destyr
Value <-migration_river$n
ID<- migration_river$ID
edges0<- data.frame(N1, N2, Value, ID, stringsAsFactors = FALSE)


lister<-list(nodes = nodes0)
lister$edges<- edges0
rownames(lister$nodes) <- lister$nodes$ID
class(lister) <- c(class(lister), "riverplot")


b<- makeRiver(nodes0,edges0)

riverplot(b, add_mid_points = FALSE)

###########################################################################################################


nodes<-data.frame(ID = LETTERS[1:3],
                  x = c(1,1,2),
                  col = c("yellow", NA, NA),
                  labels = "Node A", "node B", "Node c",
                  stringsAsFactors = FALSE)
edges<- list(A = list(C=10), B = list(C = 10))
r<- makeRiver(nodes, edges)
plot(r)
