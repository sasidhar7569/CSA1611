data <- read.csv("diabetes.csv")

print(data)

model <- lm(Glucose ~ Age, data = data)

summary(model)

plot(
  data$Age,
  data$Glucose,
  xlab = "Age",
  ylab = "Glucose",
  main = "Age vs Glucose"
)

abline(model)