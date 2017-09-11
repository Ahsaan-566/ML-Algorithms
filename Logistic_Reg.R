library("glm2")
library(ISLR)

data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/HTRU2/HTRU2/HTRU_2.csv", header = FALSE)

s<- sample(17898,14000)
train <- data[s,]
test <- data[-s,]

mdl<-glm(V9~.,data=train,family="binomial")
summary(mdl)
prob<-predict(mdl,type="response")
prob[1:10]
result<-mdl.predict==train$V9
table(result)

mdl.predict=rep("Down",14000)
mdl.predict[prob>.5]="Up"
result<-mdl.predict==train$V9
table(result)








summary(mdl)
paste("Actual:",actual, sep=" ")
paste("Predicted: ",predict(mdl,test,type="link"), sep=" ")
# accuracy <- (predicted/actual) * 100
# paste("Accuracy: ",accuracy, sep=" ")

#To be continued
