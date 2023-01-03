#6 + 10
#x <- 1:9
#y <- 99
#print(y)

#install.packages("gglot2",dependencies = T)

#sqrt(25)
#25^(1/2)
#`+`(6,10)
#ifelse(1 > 2,'big','small')

#x <- seq(1, 100, 2)
#x <- c(1, 2, 3)

#a <- rep(1,5)
#a
#b <- rep(1:5,2)
#b
#c <- rep(c(1,2,3),2)
#c

rep(c(1,3,5), times=3)
rep(c(1,3,5),each=3)

score <- c(90, 30, 70)
names(score) <- c("홍", "김", "최")
score


d <- c(1:10)
d[c(1, 3, 4)]
d[-2]
d[1:3]
d[-c(2, 3)]
#이름 지정하고 이름 값가져오는 것도 가능

k <- seq(10, 100, 10)
k[2]<-c(2)
k[c(3,4)] <- c(3,4)
k

letters
letters[c(11,9,19,19)]

j <- c(1:5)
j <- 2 * j
j
j - 1
j * c(2, 4, 6, 8, 10)

u <- 1:10
sum(u)
mean(u[1:5])
length(u)
sort(u)
sort(u, decreasing = T)

x <- 1:10
x[x >= 5]
sum(x[x>=5])#더해줌
x
sum(x>=5)#갯수 알려줌

o <- 10:50
o[o>=40]
o <- 1:10 
o[x > 5 & x < 8]

x <- c(90, 34, 89, 22)
lst <- list(name = "홍길동", age = 34, status = TRUE, score = x)
lst <- 

#매트릭스 벡터(1차원)에서 2차원으로 늘림(벡터의 확장판)
m <- matrix(1:20, nrow = 4, ncol = 5)
m

m <- matrix(1:19, nrow = 4, ncol = 5)
m

m1 <- matrix(1:20, nrow = 4, ncol = 5)
m1
m1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
m1

x <- 1:4
y <- 5:8
cbind(x, y)
rbind(x, y)

(x <- matrix(1:20, ncol = 5))
x[2,3]
x[3,]
x[,2]

x <- matrix(1:20, nrow = 4, ncol = 5)
x
x[,2]

x <- matrix(1:4, ncol = 2)
rownames(x) <- c("row1", "row2")
colnames(x) <- c("col1", "col2")
x

city <- c("seoul", "washington", "hounkong")
ranking <- c(1, 3, 2)
df <- data.frame(city, ranking)
str(df)

head(iris)
head(iris, 3)
str(iris)
tail(iris)
tail(iris, 3)

#표준편차
sd(iris$Sepal.Length)

iris[iris$Sepal.Length<5,]

iris[, c(1, 2)]
iris[2:3, c("Sepal.Width","Sepal.Length")]


q <- c(5, 8, 9, 10, 11, 15, 16, 19, 21, 29, 120)
#mean(df)
#sd(df)
q
vec <- q - mean(q) 
vec
sum(vec)
#편차의 합은 0이다.
log10(3000) - log10(1000) == log10(30) - log10(10)

install.packages(dplyr)
install.packages(gapminder)

library(ggplot2)
library(dplyr)
library(gapminder)
gapminder %>%
  filter(year == 1952 & continent == "Asia") %>%
  ggplot(aes(reorder(country, pop), pop)) +
  geom_bar(stat = "identity") +
  scale_y_log10() +
  coord_flip()

haed(iris)
iris$Sepal.Width
# 이상치 나오게하기 
boxplot(iris$Sepal.Width)
boxplot.stats(iris$Sepal.Width)

m <- mean(iris$Sepal.Width)
m
s <- sd(iris$Sepal.Width)
s
#이거 벗어나면 이상치
#표준편차 = 분산
c(m - 3 * s, m + 3 * s)

iris[, c(1, 2)]
iris[2:3,c("Sepal.Width","Sepal.Length")]
iris[1:2,-5]

iris[iris$Sepal.Length>5,c(-1,-2)]

dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
tail(iris,2)

dim(iris)[2]

iris[,5]

unique(iris[,5])

table(iris[, 5])

colSums(iris[, -5])
colMeans(iris[, -5])
rowSums(iris[, -5])[1:2]
rowMeans(iris[, -5])[1:2]


subset(iris, Species == 'setosa')
iris[iris$Species == 'setosa',]

# 파일데이터 읽기와 쓰기 
#head(airquality)
getwd()
write.csv(airquality, "air.csv", row.names = F)
#setwd("c:\")

air <- read.csv("air.csv", header=T)
head(air)

grade <- "A"

if(grade == "A"){
  print("T")
} else {
  print("F")
}

# & (하나)는 벡터 연산 && (두) 개면 논리 연산
a <- c(10, 20, 30)
b <- c(20, 30, 40)

if(a > 5 && b > 10){
  print(a+b)
}

j <- 10
i <- 20

ifelse(j > 5 && i > 10, j + i, 0)

for(j in 2:9){
  for(i in 2:9){
    cat(j ,"X", i, "=", j*i,"\n") 
  }
}

for(){
  
}

# 데이터 죽었을 때 
data(iris)

for(i in 1:nrow(iris)){
  vec <- ifelse(iris$Sepal.Length < 5,"L","H")
}
iris$vec <- vec
iris

apply(iris[,-5], 2, mean)
#apply 중간값 1은 로우 방향 2는 칼럼 방향


#사용자 정의 함수
my_max <- function(x,y){
  return(ifelse(x > y, x, y))
}
my_max(10, 15)


#범주형 자료 검색
fav <- c("W", "S", "SP", "S", "S", "F", "F", "S", "SP", "S", "S", "F", "F")
print(fav)
table(fav)
length(fav)
round(table(fav) / length(fav), 2) * 100

dat <- table(fav)
barplot(sort(dat, decreasing = T))
pie(sort(dat, decreasing = T))
#도움말
?pie
?hist
#민 평균, 미디엄ㅇ,ㄴ 중위값

hist(iris$Sepal.Length)


boxplot(cars$dist,main="자동차")
boxplot(Petal.Length~Species,data=iris)
boxplot(iris$Petal.Length, notch = T, col='blue')

plot(mtcars$wt, mtcars$mpg, col = 'red', pch = 19, main='산점도', xlab = '무게', ylab = '연비')

pairs(iris[-5])

plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species, pch = 20)

bears = c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)
length(bears)
length(bal)
df <- data.frame(bears, bal)
df
plot(bal~bears, data = df ,pch = 20, col = 'Orange')

#회귀 모형 만들기
model <- lm(bal~bears, data = df)
abline(model, col = 'red', lw = 2)

cor(df$bears, df$bal)


















































