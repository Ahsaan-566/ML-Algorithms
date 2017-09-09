library(neuralnet)

data <- read.csv('/home/drogon/Desktop/Data-Codex/Small DS/Neural-Networks/Concrete Strength/Concrete_Data.csv', header = FALSE)

#normalize function
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

#apply normalization function on the data
data_norm <- as.data.frame(lapply(data, normalize))

#summary of data
#summary(data_norm)

#Data splitting
s<- sample(1030,773)
train <- data_norm[s,]
test <- data_norm[-s,]

#Model
model <- neuralnet(V9~V1+V2+V3+V4+V5+V6+V7+V8, data=train, hidden=10)
model_results <- compute(model,test[1:8])
predicted <- model_results$net.result
cor(predicted, test$V9)

#plot the neural net model
plot(model)

  
  
  

