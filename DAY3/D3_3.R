install.packages("e1071")
library(e1071)

data <- data.frame(
  age = c("<=30","<=30","31...40",">40",">40",">40","31...40","<=30","<=30",">40","<=30","31...40","31...40",">40"),
  income = c("high","high","high","medium","low","low","low","medium","low","medium","medium","medium","high","medium"),
  student = c("no","no","no","no","yes","yes","yes","no","yes","yes","yes","no","yes","no"),
  credit_rating = c("fair","excellent","fair","fair","fair","excellent","excellent","fair","fair","fair","excellent","excellent","fair","excellent"),
  buys_computer = c("no","no","yes","yes","yes","no","yes","no","yes","yes","yes","yes","yes","no")
)

data$age <- as.factor(data$age)
data$income <- as.factor(data$income)
data$student <- as.factor(data$student)
data$credit_rating <- as.factor(data$credit_rating)
data$buys_computer <- as.factor(data$buys_computer)

model <- naiveBayes(buys_computer ~ ., data = data)

prediction <- predict(model, data)

print(prediction)