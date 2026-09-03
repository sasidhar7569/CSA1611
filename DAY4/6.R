x <- c(100, 70, 60, 90, 90)

# (a) Min-Max Normalization (min=0, max=1)
min_max <- (x - min(x)) / (max(x) - min(x))

# (b) Z-score Normalization
z_score <- (x - mean(x)) / sd(x)

# (c) Z-score using Mean Absolute Deviation (MAD)
mad_val <- mean(abs(x - mean(x)))
z_score_mad <- (x - mean(x)) / mad_val

# (d) Decimal Scaling
j <- ceiling(log10(max(abs(x))))
decimal_scaled <- x / (10^j)

cat("(a) Min-Max:", min_max, "\n")
cat("(b) Z-score:", z_score, "\n")
cat("(c) Z-score (MAD):", z_score_mad, "\n")
cat("(d) Decimal Scaling:", decimal_scaled, "\n")