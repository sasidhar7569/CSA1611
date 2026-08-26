install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

model <- rpart(
  buys_computer ~ age + income + student + credit_rating,
  data = data,
  method = "class"
)

print(model)

rpart.plot(model)

prediction <- predict(model, data, type = "class")

print(prediction)

accuracy <- mean(prediction == data$buys_computer)

print(accuracy)