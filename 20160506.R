################################
#            控制流            # 
################################
# switch (statement, list)
x <- 3
switch(x, 2+2, mean(1:10), rnorm(4))
switch(2, 2+2, mean(1:10), rnorm(4))
switch(6, 2+2, mean(1:10), rnorm(4))
y <- "fruit"
switch(y,fruit="banana",vegetable="broccoli",meat="beef")
#for (name in expr_1) expr_2
n<-4; x<-array(0, dim=c(n,n))
for (i in 1:n){
  for (j in 1:n){
    x[i,j]<-1/(i+j-1)
  }
}
# while (condition) expr
f<-1; f[2]<-1; i<-1
while (f[i]+f[i+1]<1000) {
  f[i+2]<-f[i]+f[i+1]
  i<-i+1;
}
#repeat expr
f<-1; f[2]<-1; i<-1
repeat {
  f[i+2]<-f[i]+f[i+1]
  i<-i+1
  #if (f[i]+f[i+1]>=1000) break
  if (f[i]+f[i+1]<1000) next else break
}
################################
#              函数            # 
################################
# name <- function(arg_1, arg_2, ...) expression
f<-function(x) x^3-x-1
fzero(f, 1, 2, 1e-6)
# uniroot(f, interval,
#         lower = min(interval), upper = max(interval),
#         tol = .Machine$double.eps^0.25, maxiter = 1000, ...)
uniroot(f,c(1,2))
A <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03,
       80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
B <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03,
       79.95, 79.97)
twosam(A,B)
fun1 <- function(data, data.frame, graph, limit) {
  #[function body omitted]
}
ans <- fun1(d, df, TRUE, 20)
ans <- fun1(d, df, graph=TRUE, limit=20)
ans <- fun1(data=d, limit=20, graph=TRUE, data.frame=df)
fzero(1,2)
Newtons(funs, c(0,1))
#递归
f <- function(x) 1/x
quad<-area(f,1,5); quad
log(5)#验证