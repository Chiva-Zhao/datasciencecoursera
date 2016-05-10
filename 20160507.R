# 位置的度量
# mean(x, trim = 0, na.rm = FALSE)
# weighted.mean(x, w, na.rm = FALSE)
w <- c(75.0, 64.0, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5,
       66.6, 64.0, 57.0, 69.0, 56.9, 50.0, 72.0)
w.mean <- mean(w); w.mean
x <- 1:12; dim(x)<-c(3,4)
mean(x)
apply(x,1,mean)
apply(x,2,mean)
y=as.data.frame(x);y
apply(y,2,mean)
# sum(..., na.rm = FALSE)
mean <- sum(w)/length(w); mean
w.mean <- mean(w, trim=0.1); w.mean
w.na <- c(75.0, 64.0, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5,
          66.6, 64.0, 57.0, 69.0, 56.9, 50.0, 72.0, NA)
w.mean <- mean(w.na); w.mean
w.mean <- mean(w.na, na.rm = TRUE); w.mean
# 顺序统计量
# sort(x, partial = NULL, na.last = NA, decreasing = FALSE,method = c("shell", "quick"), index.return = FALSE)
x <- c(75, 64, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5)
sort(x)
sort(x,decreasing = T)
x.na <- c(75.0,64.0,47.4,NA,66.9,62.2,62.2,58.7,63.5)
sort(x.na);sort(x.na, na.last = TRUE)
sort(x.na, na.last = FALSE)
# median(x, na.rm = FALSE)
x <- c(75, 64, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5);median(x)
x.na <- c(75.0,64.0,47.4,NA,66.9,62.2,62.2,58.7,63.5);median(x.na);median(x,na.rm=F)
# quantile(x, probs = seq(0, 1, 0.25), na.rm = FALSE,names = TRUE, type = 7, ...)
w <- c(75.0, 64.0, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5,66.6, 64.0, 57.0, 69.0, 56.9, 50.0, 72.0)
quantile(w);quantile(w, probs = seq(0, 1, 0.2))
# var(x, y = NULL, na.rm = FALSE, use);sd(x, na.rm = FALSE)
var(w);sd(w)
cv <- 100*sd(w)/mean(w); cv
css <- sum((w-mean(w))^2); css
uss <- sum(w^2); uss
source("data_outline.R")
w <- c(75.0, 64.0, 47.4, 66.9, 62.2, 62.2, 58.7, 63.5,
       66.6, 64.0, 57.0, 69.0, 56.9, 50.0, 72.0)
data_outline(w)
