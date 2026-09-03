AvgSpeed <- c(78, 81, 82, 74, 83, 82, 77, 80, 70)
TotalTime <- c(39, 37, 36, 42, 35, 36, 40, 38, 46)

# a) Standard Deviation
sd_speed <- sd(AvgSpeed)
sd_time <- sd(TotalTime)

# b) Variance
var_speed <- var(AvgSpeed)
var_time <- var(TotalTime)

cat("AvgSpeed SD:", sd_speed, "| Variance:", var_speed, "\n")
cat("TotalTime SD:", sd_time, "| Variance:", var_time, "\n")