# Question 3: Native R Model Comparison
df <- data.frame(
  Feature1 = factor(c("A", "A", "B", "B", "A", "B")),
  Feature2 = factor(c("X", "Y", "X", "Y", "Y", "X")),
  Class = factor(c("Yes", "No", "Yes", "No", "Yes", "No"))
)

# Fit built-in logistic regression model
model_glm <- glm(Class ~ Feature1 + Feature2, data = df, family = binomial)
pred_prob <- predict(model_glm, type = "response")
pred_class <- ifelse(pred_prob > 0.5, "Yes", "No")

# Calculate Accuracy
acc_glm <- mean(pred_class == df$Class)

# Plot accuracy summary using base R
barplot(c(GLM_Model = acc_glm), col = "skyblue", 
        ylim = c(0, 1), main = "Base R Model Accuracy", ylab = "Accuracy")