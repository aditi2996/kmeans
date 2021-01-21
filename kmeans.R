#importing the data set
dataset=read.csv('Mall_Customers.csv')
x=dataset[4:5]
#using elbow method to find number of clusters
set.seed(6)
wcss<-vector()
for (i in 1:10)
  wcss[i]=sum(kmeans(x,i)$withinss)
plot(1:10,wcss,type="b",main=paste('cluster of clients'),xlab="no of clusters",ylab="wcss")
#applying k means to mall dataset
set.seed(29)
kmeans=kmeans(x,5,iter.max=300,nstart=10)
#visualization
library(cluster)
clusplot(x,kmeans$cluster,lines=0,shade=TRUE,color=TRUE,labels=2,plotchar=FALSE,span=TRUE,main=paste('cluster of clients'),xlab="annual income",ylab="spending score")
