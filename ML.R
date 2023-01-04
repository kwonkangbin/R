library(neuralnet)
library(keras)
library(pytorch)
head(infert)
df <- infert[,2:6]

table(df$case)

model <- neuralnet(case~., data=df, hidden = c(2, 3))
model
plot(model)
compute(model, df[1,])

library(party)
model <- ctree(Species~., data = iris)
plot(model)


























































































#data(infert)