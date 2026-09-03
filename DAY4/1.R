# Question 1: Mall Customer Segmentation
data <- data.frame(
  CustomerID = c("01", "12", "23", "34", "45"),
  Gender = c("Male", "Male", "Female", "Female", "Female"),
  Age = c(19, 21, 20, 23, 31),
  Annual_Income = c(15, 15, 16, 16, 17),
  Spending_Score = c(39, 81, 6, 77, 40)
)

# K-Means Clustering based on Income and Spending Score
set.seed(123)
km.res <- kmeans(data[, c("Annual_Income", "Spending_Score")], centers = 3) # adjust centers for larger datasets

# Plotting Clusters
plot(data$Annual_Income, data$Spending_Score, 
     col = km.res$cluster, pch = 19, cex = 2,
     xlab = "Annual Income (k$)", ylab = "Spending Score (1-100)",
     main = "Customer Segmentation Clustering")
text(data$Annual_Income, data$Spending_Score, labels = data$CustomerID, pos = 4)