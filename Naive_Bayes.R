library(e1071)
library(rminer)

# data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Acute Inflammations/diagnosis.csv', header = FALSE, stringsAsFactors=TRUE, sep=",", fileEncoding="UTF-16LE", dec=",")
# data$V1= paste(data$V1,data$V2, sep=".")
# data$V2<-NULL
# data$V1 = as.double(data$V1)
# 
# s<- sample(120,70)
# train <- data[s,]
# test <- data[-s,]
# 
# data$V1 = as.numeric(data$V1)
# 
# data$V7 = factor(data$V7)
# levels(data$V7)[1]<-"1"
# levels(data$V7)[2]<-"2"
# 
# data$V3 = factor(data$V3)
# levels(data$V3)[1]<-"1"
# levels(data$V3)[2]<-"2"
# 
# data$V4 = factor(data$V4)
# levels(data$V4)[1]<-"1"
# levels(data$V4)[2]<-"2"
# 
# data$V5 = factor(data$V5)
# levels(data$V5)[1]<-"1"
# levels(data$V5)[2]<-"2"
# 
# data$V6 = factor(data$V6)
# levels(data$V6)[1]<-"1"
# levels(data$V6)[2]<-"2"

data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Letter recognition/letter-recognition.csv')

s<- sample(20000,17000)
train <- data[s,]
test <- data[-s,]

nb <- naiveBayes(T~., data=train)
p <- predict(nb,test)
table(test[,16],p)
result <- p==test[,16]
table(result)
prop.table(table(result))



