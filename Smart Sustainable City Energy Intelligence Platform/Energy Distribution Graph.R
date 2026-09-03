# Select the CSV file
file_path <- file.choose()

# Load the dataset
data <- read.csv(file_path)

# Energy Consumption Distribution
hist(
  data$Energy_Consumption_kWh,
  breaks = 25,
  main = "Distribution of Energy Consumption",
  xlab = "Energy Consumption (kWh)",
  ylab = "Number of Buildings"
)