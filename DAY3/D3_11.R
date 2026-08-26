library(rpart)

tree_model <- rpart(
  buys_computer ~ .,
  data = data,
  method = "class"
)

tree_pred <- predict(
  tree_model,
  data,
  type = "class"
)

tree_accuracy <- mean(
  tree_pred == data$buys_computer
)

print(tree_accuracy)
logistic_model <- glm(
  buys_computer ~ age + income + student + credit_rating,
  data = data,
  family = binomial
)

summary(logistic_model)