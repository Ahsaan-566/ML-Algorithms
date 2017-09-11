library(rpart)
library(rpart.plot)
data<- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Letter recognition/letter-recognition.csv')
# data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Tamilnadu Electricity/eb.csv', header = FALSE, stringsAsFactors=TRUE)
# data$X<-NULL
# data$V4<-NULL
# data$V5<-NULL
# data$V1= paste(data$V1,data$V2, sep=".")
# data$V2<-NULL
# data$V1 = as.double(data$V1)

s<- sample(20000,17000)
train <- data[s,]
test <- data[-s,]

dtm <- rpart(T~., data=train , method="class")
printcp(dtm)
# rpart.plot(dtm, type=4, extra=101)
p <- predict(dtm, test, type="class")
table(p,test$T)
result <- p == test$T
table(result)
prop.table(table(result))
