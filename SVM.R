library(kernlab)

data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Classification/Letter recognition/letter-recognition.csv', header = FALSE)


s<- sample(20000,17000)
train <- data[s,]
test <- data[-s,]

letter_classifier <- ksvm(V1~., data=train, kernel='vanilladot')
letter_predictions <- predict(letter_classifier, test)
table(letter_predictions , test$V1)
result <- letter_predictions == test$V1
table(result)
prop.table(table(result))




