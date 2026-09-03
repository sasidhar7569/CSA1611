k_values <- 2:6

plot(
  k_values,
  silhouette_scores,
  type = "b",
  pch = 19,
  xlab = "Number of Clusters (K)",
  ylab = "Silhouette Score",
  main = "Silhouette Score for Different K Values"
)