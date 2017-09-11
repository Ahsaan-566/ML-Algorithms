library("glm2")

data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/Airfoil_self_noise/airfoil_self_noise.csv", header = TRUE)


s<- sample(1503,1203)
print(s)
train <- data[s,]
test <- data[-s,]

actual = test$X126.201
print(test)
mdl<-lm(X126.201~X0.3048,train)

# test$X126.201<-NULL
predicted <- predict(mdl,test)
accuracy <- sum(abs(predicted-actual))
# if(accuracy)

paste("Actual:",actual, sep=" ")
paste("Predicted: ",predicted, sep=" ")
paste("Accuracy: ",100-(accuracy/length(test$X126.201)), sep=" ")
#predict(mdl,test)