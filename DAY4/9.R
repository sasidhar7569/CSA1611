library(rpart)

# Base R builtin dataset for demonstration (using 'iris' as a standard target)
data(iris)

# Build Decision Tree using base package 'rpart'
dt_model <- rpart(Species ~ ., data = iris)

# Model Predictions
dt_pred <- predict(dt_model, iris, type = "class")

# Confusion Matrix
conf_matrix <- table(Predicted = dt_pred, Actual = iris$Species)
print("Confusion Matrix:")
print(conf_matrix)

# Calculate Accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("\nDecision Tree Accuracy:", round(accuracy * 100, 2), "%\n")

# Plot Decision Tree Graph (built-in plot)
plot(dt_model, main = "Decision Tree Visualization")
text(dt_model, use.n = TRUE)