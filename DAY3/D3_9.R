library(arules)

transactions <- list(
  c("Hot_Dogs","Buns","Ketchup"),
  c("Hot_Dogs","Buns"),
  c("Hot_Dogs","Coke","Chips"),
  c("Chips","Coke"),
  c("Chips","Ketchup"),
  c("Hot_Dogs","Coke","Chips")
)

trans <- as(transactions, "transactions")

itemsets <- apriori(
  trans,
  parameter = list(
    target = "frequent itemsets",
    supp = 0.3333
  )
)

inspect(itemsets)

rules <- apriori(
  trans,
  parameter = list(
    supp = 0.3333,
    conf = 0.60
  )
)

inspect(rules)