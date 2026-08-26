library(rpart)

tree <- rpart(
  buys_computer ~ .,
  data = data,
  method = "class"
)

tree_pred <- predict(
  tree,
  data,
  type = "class"
)

tree_accuracy <- mean(
  tree_pred == data$buys_computer
)

print(tree_accuracy)
install.packages("RWeka")
library(RWeka)

rule_model <- JRip(
  buys_computer ~ .,
  data = data
)

rule_pred <- predict(
  rule_model,
  data
)

rule_accuracy <- mean(
  rule_pred == data$buys_computer
)

print(rule_accuracy)
accuracy <- c(
  Decision_Tree = tree_accuracy,
  Rule_Based = rule_accuracy
)

print(accuracy)
barplot(
  accuracy,
  main = "Accuracy Comparison",
  xlab = "Algorithm",
  ylab = "Accuracy",
  ylim = c(0,1)
)