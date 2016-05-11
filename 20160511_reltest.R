attach(ore)
cor.test(x,y)
cor.test(x,y, method="spearman")
cor.test(x,y, method="kendall")

rubber<-read.table("rubber.data")
apply(rubber,2,mean)
cov(rubber)
cor(rubber)
cor.test(~X1+X2, data=rubber)
cor.test(~X1+X3, data=rubber)
cor.test(~X2+X3, data=rubber)

rt <- read.table("applicant.data")
AVG <- apply(rt, 1, mean)
sort(AVG, decreasing = TRUE)

cor(rt)

X<-read.table("course.data")
outline(X)
stars(X)
stars(X, full=FALSE, draw.segments = TRUE,
      key.loc = c(5,0.5), mar = c(2,0,0,0))

source("unison.R")
unison(X)
