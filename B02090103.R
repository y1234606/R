#第一個R程式
x <- 5
x

#R畫圖
x <- c(1,2,3,4,5)
plot(x)

y <- c(5,10,15,20,25)
plot(x,y)

#iris
data("iris")
plot(iris)

#R圖形demo
demo(graphics)

#Taiwan Map
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan",zoom=8)
ggmap(map.taiwan)

#套件安裝
install.packages("C50")
#套件載入
library(C50)
#套件移除
remove.packages("C50")
#套件更新
update.packages()

#R練習
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#vector(向量)
V <- c(10,5,3.1,6.4,9.2,21.7)
V
length(V)
mode(V)

#NA(缺值)
V <- c(10,5,NA,6.4,9.2,21.7)
V
V[2]
V2 <- 1:10

#型態與長度
x1 <- 10
mobe(x1)
length(x1)
x2 <- 10.11
mode(x2)
length(x2)
x3 <- T
x3
mode(x3)
length(x3)
x4 <- "Hello"
mode(x4)
lenght(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)

#Matrix(矩陣)
x <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
x
y <- matrix(1:24, nrow = 4, ncol = 6, byrow = FALSE)
y

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc
xr <- rbind(x1,x2,x3)
xr

#轉置(Transposition)
xc_t <- t(xc)
xc_t

nrow(x)
ncol(x)
x[1,]
x[,2]
x[2,3]
eigen(xc)
xc
xr
#z <- %*% xr

#Array(陣列)
x <- 1:24
dim(x) <- c(4,6)
x
x <- array (1:24,dim = c(4,6))
x [2,4]
dim(x) <- c(3,4,2)
x <- array (0,dim = c(3,4,2))
x
x[2,3,1]
x[3,2,2]

#Factor(因子)
x <- factor(c("男","女","男","男","女"))
x

#dataframe(資料框架)
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <- c("male","male","female","female")
pay <- c(30000,4000,45000,50000)

x_dataframe <- data.frame(id,age,sex,pay)
x_dataframe

x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe <- edit(x_dataframe)
x_dataframe

#list列表
id <- c(1,2,3)
sex <- c ("male","male","female")
pay <- c (3000,4000,45000)
y_dataframe <- data.frame(id,sex,pay)
gender <- factor(c("男","男","女"))
paul.Family <- list(name="paul",wife="iris",no.kids=3,kids.age=c(25,28,30),gender,y_dataframe)
paul.Family

paul.Family$kids.age
paul.Family[4]
paul.Family[[4]]

paul.Family$kids.age[2]
paul.Family[[4]][2]
paul.Family[4][2]

#CH2 資料的讀寫
getwd()
setwd("C:/")
getwd()
X <- read.table("x.csv",sep=",",header=TRUE)
X
X$age
X[1,2]
X
str(X)

X <- read.csv("x.csv", header=TRUE)
X

X <- read.table("X.txt",sep="　",header = TRUE)
X
X <- read.table("X.txt",header = TRUE)
X
X <- read.table("X.txt",sep="\t",header = TRUE)
X
X <- read.table("X.txt",header = TRUE)
X

X <- scan("")
X

my <- scan(file="",what=list)name="",pay=integer(0),sex=""))
my

X <- scan("x1.csv",sep=",")
X
X <- scan("x1.txt")
X
write.table(X,"C:/X_File.csv",row.name=FALSE,col.names=TRUE,sep=",")

X <- scan("x1.csv",sep=",",what=list(id=integer(0),age=integer(0),pay=integer(0)))
X

#data()內建資料庫
data()
data(iris)
iris
str(iris)
summary(iris)
iris

#第三章
a <- c(1,2,3)
x <- a+2
x

#()直接
(x <- a+2)

#{}結合命令
{a <- c(1,2,3); x <- a+2}
x
({a <- c(1,2,3); x <- a+2})

#if else
x <- 6
if(x>5) y=2 else y=4
y

x <- 3
if(x<5) y=10
y

x <- 3
y <- 1
if(x<5 && y<5) {y <- 10; 2 <- 5}
y
z

x <- 20
y <- ifelse (x>5,2,3)
y

if(x>5) y <- 2 else y <- 3
y

#switch
x <- 3
switch(x,5,sum(1:10),rnorm(5))

y <- 1
switch(y,juice="Apple",meat="Pork")

#for
x <- 0
for (i in 1:5) x <- x+i
x

x <- 0
y <- 0
for (i in 1:5){x <- x+i; y <- i^2}
x
y

#while
sum <- 0
i <- 1
while (i<=10)

#repeat
sum <- 0
i <- 0
repeat{
sum <- sum+i
i <- i+1
if(i>10) break
}
sum

# %%餘數 %/%商
sum <- 0
for(i in 1:50){
if (i%%2 == 0 )next
sum <- sum+i
}
sum

#apply
x <- array(1:24, dim = c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)

#自訂函數
myfun <- function(x){y <- x+2; return(y)}
myfun(1)
myfun(100)
myfun() #error
myfum <- function(x = 1){y <- x+2; return(y)}
myfun(50)
myfun()

#<<-改變函數外面的值