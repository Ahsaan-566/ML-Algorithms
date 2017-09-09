library("glm2")

data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/Bike-Sharing-Dataset/hour.csv", header = TRUE)
data$instant = NULL
data$dteday = NULL

s<- sample(17380,17379)
train <- data[s,]
test <- data[-s,]
actual = test$weekday
test$weekday <- NULL


mdl<-glm(weekday~season+yr+mnth+hr+holiday+workingday+cnt,train, family=gaussian(link = "identity"))
predict(mdl,test,type="link")

paste("Actual:",actual, sep=" ")
paste("Predicted: ",predict(mdl,test,type="link"), sep=" ")
# accuracy <- (predicted/actual) * 100
# paste("Accuracy: ",accuracy, sep=" ")

#To be continued
