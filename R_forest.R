library(randomForest)
library(caret)
data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Letter recognition/letter-recognition.csv', header = FALSE)
# data$V1= paste(data$V1,data$V2, sep=".")
# data$V2<-NULL
# data$V1 = as.double(data$V1)

s<- sample(20000,17000)
train <- data[s,]
test <- data[-s,]
# data$V1 = as.numeric(data$V1)
# data$V7 = factor(data$V7)
# levels(data$V7)[1]<-"1"
# levels(data$V7)[2]<-"2"
# data$V3 = factor(data$V3)
# levels(data$V3)[1]<-"1"
# levels(data$V3)[2]<-"2"
# data$V4 = factor(data$V4)
# levels(data$V4)[1]<-"1"
# levels(data$V4)[2]<-"2"
# data$V5 = factor(data$V5)
# levels(data$V5)[1]<-"1"
# levels(data$V5)[2]<-"2"
# data$V6 = factor(data$V6)
# levels(data$V6)[1]<-"1"
# levels(data$V6)[2]<-"2"


rfm <- randomForest(V1~.,data=train)
print(rfm)
importance(rfm)
# p <-predict(rfm, test$V1)
# table(p,test[,16])

# rf_model<-train(V1~.,data=train,method="rf",
#                 trControl=trainControl(method="cv",number=3),
#                 prox=TRUE,allowParallel=TRUE)
# print(rf_model)

# table(p,test[,16])
# result <- p==test[,16]
# table(result)
# prop.table(table(result))
# #table(test[,6],p)
# # importance(rfm)
# # getTree(rfm,1,labelVar = TRUE)


