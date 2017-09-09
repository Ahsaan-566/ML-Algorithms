library(randomForest)

s<-sample(150,100)
iris_train <- iris[s,]
iris_test <- iris[-s,]


iris$Species = factor(iris$Species)
rfm <- randomForest(Species~., iris_train)
p <- predict(rfm,iris_test)
table(iris_test[,5],p)