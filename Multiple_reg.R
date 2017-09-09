library("glm2")

data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/Airfoil_self_noise/airfoil_self_noise.csv", header = TRUE)


s<- sample(1503,1502)
train <- data[s,]
test <- data[-s,]
actual = test$X126.201
print(test)
mdl<-lm(X126.201~.,train)

paste("Actual:",test$X126.201, sep=" ")
test$X126.201<-NULL
paste("Predicted: ",predict(mdl,test), sep=" ")
predicted <- predict(mdl,test)
accuracy <- (predicted/actual) * 100
paste("Accuracy: ",accuracy, sep=" ")
#predict(mdl,test)