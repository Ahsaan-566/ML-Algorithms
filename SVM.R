library(kernlab)

#data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Letter recognition/letter-recognition.csv', header = FALSE)
data<- read.csv("/home/drogon/Desktop/Data-Codex/Small DS/Regression/HTRU2/HTRU2/HTRU_2.csv", header = FALSE)


#s<- sample(20000,17000)
s<- sample(17898,14000)
train <- data[s,]
test <- data[-s,]

letter_classifier <- ksvm(V9~., data=train, kernel='vanilladot')
letter_predictions <- predict(letter_classifier, test)
print(letter_predictions)
table(letter_predictions , test$V9)
result <- letter_predictions == test$V9
table(result)
prop.table(table(result))




