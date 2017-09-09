library(rpart)
library(rpart.plot)

data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Clustering/Epileptic Seizure Recognition/data.csv', header = TRUE, stringsAsFactors=TRUE)
data$X<-NULL
# data$V1= paste(data$V1,data$V2, sep=".")
# data$V2<-NULL
# data$V1 = as.double(data$V1)

s<- sample(11501,8000)
train <- data[s,]
test <- data[-s,]

dtm <- rpart(y~., train , method="class")
rpart.plot(dtm, type=4, extra=101)
p <- predict(dtm, test, type="class")
table(test[,179],p)


