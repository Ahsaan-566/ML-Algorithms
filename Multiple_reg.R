library("glm2")

data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/Airfoil_self_noise/airfoil_self_noise.csv", header = TRUE)


s<- sample(1503,1203)
train <- data[s,]
test <- data[-s,]

actual = test$X126.201
print(test)
mdl<-lm(X126.201~.,train)

predicted <- predict(mdl,test)
accuracy <- sum(abs(predicted-actual))
#accuracy <- (predicted/actual) * 100
paste("Actual:",actual, sep=" ")
paste("Predicted: ",predicted, sep=" ")
paste("Accuracy: ",100-(accuracy/length(test$X126.201)), sep=" ")
#predict(mdl,test)