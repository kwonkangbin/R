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

















