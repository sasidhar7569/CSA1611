X <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)
Y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

plot(X, Y, col = "blue", pch = 16, cex = 1.5,
     xlab = "Number of Mobile Phones Sold (X)",
     ylab = "Money (Y)",
     main = "Scatter Plot: Mobile Sales vs Revenue")
abline(lm(Y ~ X), col = "red", lty = 2) # Adding Trendline