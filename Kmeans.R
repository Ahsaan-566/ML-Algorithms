 iris.features = iris
 #iris.features$Species <- NULL
 result <- kmeans(iris.features,3)
 table(iris$Species,result$cluster)
 plot(iris[c("Petal.Length","Petal.Width")], col=result$cluster)
 plot(iris[c("Sepal.Length","Sepal.Width")], col=result$cluster)
 