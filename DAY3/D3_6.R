data <- read.csv("diabetes.csv")

model <- lm(
  Glucose ~ Age + BMI + BloodPressure + Insulin,
  data = data
)

summary(model)