X1<-c(35, 40, 40, 42, 37, 45, 43, 37, 44, 42, 41, 39)
X2 <- c(60, 74, 64, 71, 72, 68, 78, 66, 70, 65, 73, 75)
plot(X1,X2)
rt<-read.table("data/exam0203.txt", head=TRUE);rt
lm.sol<-lm(Weight~Height,data = rt)
summary(lm.sol)
# 向量的赋值
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
# 向量的运算
# % / % 整除 %%取余
y <- c(x, 0, x)
x <- c(-1, 0, 2); y <- c(3, 8, 2)
v <- 2*x + y + 1; v
x * y;x / y;x^2;y^x;exp(x);sqrt(y);sqrt(-2+0i) 
# 函数
min(x);max(x);range(x);which.min(x);which.max(x);
sum(x);prod(x);length(x);
# 中位数，均值，方差标准差和顺序统计量
median(x);mean(x);var(x);sd(x);sort(x);order(x);sort.list(x);
# 等差数列 2.312:6;4:7.6
# 等间隔函数
seq(1,2,.2)
s2 <- seq(length=51, from=-5, by=.2)
# 重复函数
rep(2,3)
x <- c(1, 4, 6.25); x
s <- rep(x, times=3); s
# 逻辑向量
x <- 1:7;l <- x > 3;l;x[x>3]
z <- c(TRUE, FALSE, F, T)
all(c(1, 2, 3, 4, 5, 6, 7) > 3)
any(c(1, 2, 3, 4, 5, 6, 7) > 3)
# 缺失数据
z <- c(1:3, NA); z
ind <- is.na(z); ind
z[is.na(z)] <- 0; z
x<-c(0/1, 0/0, 1/0, NA); x
is.nan(x);is.finite(x);is.infinite(x);is.na(x)
# 字符型向量
y <-c ("er", "sdf", "eir", "jk", "dim")
paste("My","Job")
labs<-paste("X", 1:6, sep = ""); labs
paste(1:10);as.character(1:10);
paste("Today is", date())
paste(c('a', 'b'), collapse='.');paste('a','b',sep = '.')
# 复数向量
x <- seq(-pi, pi, by=pi/10)
y <- sin(x)
z <- complex(re=x, im=y)
plot(z);lines(z)
Re(z);Im(z);Mod(z);Arg(z)
#向量下标运算
x <- c(1,4,7)
x[2];(c(1, 3, 5) + 5)[2]
x[2] <- 125;x
x[c(1,3)] <- c(144, 169);x
# 逻辑向量
x <- c(1,4,7);x < 5;x[x<5]
z <- c(-1, 1:3, NA);z[is.na(z)] <- 0;z
z <- c(-1, 1:3, NA);y <- z[!is.na(z)];y
(z+1)[(!is.na(z)) & z>0] -> x;x
# 定义分段函数
y <- numeric(length(x))
y[x<0] <- 1 - x[x<0];y[x>=0] <- 1 + x[x>=0]
#下标整数运算
v <- 10:20;v[c(1,3,5,9)];v[1:5];v[c(1,2,3,2,1)]
c("a","b","c")[rep(c(2,1,3), times=3)]
v[-(1:5)]
ages <- c(Li=33, Zhang=29, Liu=18);ages["Zhang"]
fruit <- c(5, 10, 1, 20);names(fruit) <- c("orange", "banana", "apple", "peach")
# 对象
mode(c(1,3,5)>5)
z <- 0:9;is.numeric(z);is.character(z)
length(2:4);length(z)
digits <- as.character(z); digits
d <- as.numeric(digits); d
x <- numeric()
x[3] <- 17;x;x <- 1:3;x
x <- x[1:2];x
alpha <- 1:10;alpha <- alpha[2 * 1:5];alpha
length(alpha) <- 3;alpha
x <- c(apple=2.5,orange=2.1); x;attributes(x)
attr(x,"names")
attr(x,"names") <- c("apple","grapes"); x
attr(x,"type") <- "fruit"; x
attributes(x)

# factor()函数
sex <- c("M","F","M","M", "F")
sexf <- factor(sex); sexf
sex.level <- levels(sexf); sex.level
sex.tab <- table(sexf); sex.tab
# tapply()
height <- c(174, 165, 180, 171, 160)
tapply(height, sex, mean)
# gl()
gl(3,5);gl(3,1,15)
# 多维数组和矩正
z<-1:12;dim(z)<-c(3,4)
dim(z)<-12;z
# array(data = NA, dim = length(data), dimnames = NULL)
X <- array(1:20,dim=c(4,5));X
Z <- array(0,dim=c(3, 4, 2));Z
# matrix(data=NA, nrow=1, ncol=1, byrow=FALSE, dimnames=NULL)
A<-matrix(1:15, nrow=3,ncol=5,byrow=TRUE);A
# 数组下标
A<-matrix(1:15, nrow=3,byrow=TRUE);A<-matrix(1:15, ncol=5,byrow=TRUE)
a <- 1:24;dim(a) <- c(2,3,4);a[2, 1, 2]
a[1, 2:3, 2:3];a[1, , ];a[ , 2, ];a[1,1, ]
# 不规则数组下标
b <- matrix(c(1,1,1,2,2,3,1,3,4,2,1,4), ncol=3, byrow=T)
a[b];a[b] <- c(101,102,103,104)
# 数组四则运算
A <- matrix(1:6, nrow=2, byrow=T); A
B <- matrix(1:6, nrow=2); B
C <- matrix(c(1,2,2,3,3,4), nrow=2); C
D <- 2*C+A/B; D
x1 <- c(100,200);x2 <- 1:6;x1+x2
x3 <- matrix(1:6, nrow=3);x3;x1+x3
x2 <- 1:5;x1+x2
# 矩阵的运算
A<-matrix(1:6,nrow=2); A;t(A)
det(matrix(1:4, ncol=2))
x <- 1:5; y <- 2*1:5;x %*% y;crossprod(x,y);
x %o% y;tcrossprod(x,y);outer(x,y)
# crossprod(A,B) 等价于t(A) %*% B
# tcrossprod(A,B) 等价于A %*% t(B) 
# 矩阵乘法
A <- array(1:9,dim=(c(3,3)));A
B <- array(9:1,dim=(c(3,3)));B
C <- A * B; C
D <- A %*% B; D
# 生成对角阵和矩阵取对角运算
v<-c(1,4,5);diag(v)
M<-array(1:9,dim=c(3,3));diag(M)
# 线性方程组和矩阵的逆
A <- t(array(c(1:8, 10),dim=c(3,3)))
b <- c(1,1,1)
x <- solve(A,b); x
B <- solve(A); B
# 矩阵的特征值和特征向量
Sm<-crossprod(A,A)
ev<-eigen(Sm); ev
# 矩阵的奇异值分解
svdA<-svd(A); svdA
attach(svdA)
u %*% diag(d) %*% t(v)
det(A)#行列式
# 最小拟合和QR分解
x<-c(0.0, 0.2, 0.4, 0.6, 0.8); y<-c(0.9, 1.9, 2.8, 3.3, 4.2)
lsfit.sol<-lsfit(x,y)
lsfit.sol;ls.print(lsfit.sol);ls.diag(lsfit.sol)
X<-matrix(c(rep(1,5), x), ncol=2);X
Xplus <- qr(X); Xplus
b <- qr.coef(Xplus, y); b#系数
fit <- qr.fitted(Xplus, y); fit#拟合值和残差
res <- qr.resid(Xplus, y); res
#矩阵（数组）运算相关函数
A<-matrix(1:6,nrow=2); A
dim(A);nrow(A);ncol(A)
x1 <- rbind(c(1,2), c(3,4)); x1
x2 <- 10+x1;x2
x3 <- cbind(x1, x2); x3
x4 <- rbind(x1, x2); x4
cbind(1, x1)
A<-matrix(1:6,nrow=2); A
X <- matrix(1:6, ncol=2,dimnames=list(c("one","two","three"), c("First","Second")),byrow=T); X
X<-matrix(1:6, ncol=2, byrow=T)
dimnames(X) <- list(c("one", "two", "three"), c("First", "Second"))
colnames(X);rownames(X)
colnames(X) <- c("First", "Second");rownames(X) <- c("one", "two", "three")
# 数组的广义转置
A<-array(1:24, dim = c(2,3,4))
B<-aperm(A, c(2,3,1));B
#apply(A, MARGIN, FUN, ...)
A<-matrix(1:6,nrow=2); A
apply(A,1,sum);apply(A,2,mean)
#########################
#     列表与数据框      #
#########################
# Lst <- list(name_1=object_1, ..., name_m=object_m)
Lst <- list(name="Fred", wife="Mary", no.children=3,child.ages=c(4,7,9))
Lst[[2]];Lst[[4]][2];Lst[4][[1]][2]
Lst[["name"]];Lst[["child.ages"]]
Lst$name;Lst$wife;Lst$child.ages
Lst$name <- "John"
Lst$income <- c(1980, 1600);Lst
list.ABC <- c(list.A, list.B, list.C)
#data.frame
df<-data.frame(
  Name=c("Alice", "Becka", "James", "Jeffrey", "John"),
  Sex=c("F", "F", "M", "M", "M"),
  Age=c(13, 13, 12, 13, 12),
  Height=c(56.5, 65.3, 57.3, 62.5, 59.0),
  Weight=c(84.0, 98.0, 83.0, 84.0, 99.5)
); df
Lst<-list(
  Name=c("Alice", "Becka", "James", "Jeffrey", "John"),
  Sex=c("F", "F", "M", "M", "M"),
  Age=c(13, 13, 12, 13, 12),
  Height=c(56.5, 65.3, 57.3, 62.5, 59.0),
  Weight=c(84.0, 98.0, 83.0, 84.0, 99.5)
); Lst
as.data.frame(Lst)
X <- array(1:6, c(2,3));data.frame(X)
df[1:2, 3:5];df[["Height"]];df$Weight
names(df);
rownames(df)<-c("one", "two", "three", "four", "five");df
# attach detach
attach(df);r <- Height/Weight; r
df$r <- Height/Weight
detach(df)
#########################
#     读写数据文件      #
#########################
# read.table(file, header = FALSE, sep = "", quote = "\"’",
#            dec = ".", row.names, col.names, as.is = FALSE,
#            na.strings = "NA", colClasses = NA, nrows = -1,
#            skip = 0, check.names = TRUE,
#            fill = !blank.lines.skip, strip.white = FALSE,
#            blank.lines.skip = TRUE, comment.char = "#")
rt<-read.table("houses.data")
is.data.frame(rt)
# scan(file = "", what = double(0), nmax = -1,
#      n = -1, sep = "",
#      quote = if(identical(sep, "\n")) "" else "’\"",
#      dec = ".", skip = 0, nlines = 0, na.strings = "NA",
#      flush = FALSE, fill = FALSE, strip.white = FALSE,
#      quiet = FALSE, blank.lines.skip = TRUE,
#      multi.line = TRUE, comment.char = "",
#      allowEscapes = TRUE)
w <- scan("weight.data")
inp <- scan("h_w.data", list(height=0, weight=0))
is.list(inp)
X <- matrix(scan("weight.data", 0),nrow=3, ncol=5, byrow=TRUE)
x<-scan()
#其他格式数据文件
library(foreign)
#SPSS
rs <- read.spss("educ_scores.sav")
rs<-read.spss("educ_scores.sav", to.data.frame=TRUE)
#SAS
rx <- read.xport("educ_scores.xpt")
# S-Plus
rs <- read.S("educ_scores")
# Stata
rd <- read.dta("educ_scores.dta")
#Excel
rd <- read.delim("educ_scores.txt")
rc <- read.csv("educ_scores.csv")
#链接嵌入的数据库
data()
data(infert)
data(package="nls")
data(Puromycin,package="nls")
library(nls);data();data("Puromycin")
#写数据文件
# write(x, file = "data",ncolumns = if(is.character(x)) 1 else 5,append = FALSE)
df <- data.frame(
  Name=c("Alice", "Becka", "James", "Jeffrey", "John"),
  Sex=c("F", "F", "M", "M", "M"),
  Age=c(13, 13, 12, 13, 12),
  Height=c(56.5, 65.3, 57.3, 62.5, 59.0),
  Weight=c(84.0, 98.0, 83.0, 84.0, 99.5)
)
# write.table(x, file = "", append = FALSE, quote = TRUE,
#             sep = " ", eol = "\n", na = "NA", dec = ".",
#             row.names = TRUE, col.names = TRUE,
#             qmethod = c("escape", "double"))
# write.csv(..., col.names = NA, sep = ",",
#           qmethod = "double")
write.table(df, file="foo.txt")
write.csv(df, file="foo.csv")
