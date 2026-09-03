# ============================================================
# SSEIP - DATA PREPROCESSING USING RSTUDIO
# ============================================================

# 1. Load Dataset
data <- read.csv(file.choose())

cat("============================================\n")
cat("SSEIP DATA PREPROCESSING OUTPUT\n")
cat("============================================\n\n")

cat("Dataset loaded successfully.\n\n")

# 2. Dataset dimensions
cat("Number of rows:", nrow(data), "\n")
cat("Number of columns:", ncol(data), "\n\n")

# 3. Display first 5 rows
cat("First Five Rows:\n")
print(head(data, 5))

cat("\n============================================\n")

# 4. Check missing values
cat("MISSING VALUE CHECK\n")
cat("============================================\n")

missing_values <- colSums(is.na(data))

print(missing_values)

cat("\nTotal missing values:",
    sum(missing_values), "\n")

# 5. Check duplicate records
cat("\n============================================\n")
cat("DUPLICATE RECORD CHECK\n")
cat("============================================\n")

duplicate_count <- sum(duplicated(data))

cat("Number of duplicate records:",
    duplicate_count, "\n")

# Remove duplicates
data <- data[!duplicated(data), ]

cat("Duplicates removed successfully.\n")

# 6. Check data structure
cat("\n============================================\n")
cat("DATA STRUCTURE\n")
cat("============================================\n")

str(data)

# 7. Summary statistics
cat("\n============================================\n")
cat("SUMMARY STATISTICS\n")
cat("============================================\n")

print(summary(data))

# 8. Check invalid numerical values
cat("\n============================================\n")
cat("INVALID VALUE CHECK\n")
cat("============================================\n")

cat(
  "Negative Energy Values:",
  sum(data$Energy_Consumption_kWh < 0),
  "\n"
)

cat(
  "Negative Waste Values:",
  sum(data$Waste_Generated_kg < 0),
  "\n"
)

cat(
  "Negative Solar Capacity Values:",
  sum(data$Solar_Capacity_kW < 0),
  "\n"
)

# 9. Final dataset information
cat("\n============================================\n")
cat("FINAL CLEAN DATASET\n")
cat("============================================\n")

cat("Rows after preprocessing:",
    nrow(data), "\n")

cat("Columns:",
    ncol(data), "\n")

# 10. Save cleaned dataset
write.csv(
  data,
  "SSEIP_Cleaned_Dataset.csv",
  row.names = FALSE
)

cat("\nCleaned dataset saved successfully.\n")

cat("\n============================================\n")
cat("PREPROCESSING COMPLETED SUCCESSFULLY\n")
cat("============================================\n")