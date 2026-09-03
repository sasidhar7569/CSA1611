veg_data <- data.frame(
  Person = c("Gopu", "Babu", "Baby", "Gopa1", "Krishna", "Jai", "DeV", "Malini", "Hema", "Anu"),
  Vegetarian = c("yes", "yes", "yes", "no", "yes", "no", "no", "yes", "yes", "yes")
)

# Counting frequencies
counts <- table(veg_data$Vegetarian)
print(counts)

# Visualizing results
barplot(counts, col = c("red", "green"), 
        main = "Vegetarian vs Non-Vegetarian Count",
        xlab = "Vegetarian status", ylab = "Count")

# Answer Output Logic:
# Vegetarian (Yes): 7, Non-Vegetarian (No): 3. 
# Vegetarian count is greater.