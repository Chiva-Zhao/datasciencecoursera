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
