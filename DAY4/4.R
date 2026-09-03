library(arules)

# Creating Transactions
tx_list <- list(
  c("Bread", "Cheese", "Egg", "Juice"),
  c("Bread", "Cheese", "Juice"),
  c("Bread", "Milk", "Yogurt"),
  c("Bread", "Juice", "Milk"),
  c("Cheese", "Juice", "Milk")
)

tx <- as(tx_list, "transactions")

# Rules Generation (Support = 50%, Confidence = 75%)
rules <- apriori(tx, parameter = list(supp = 0.5, conf = 0.75))
inspect(rules)