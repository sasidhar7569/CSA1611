library(arules)

transactions <- list(
  c("M","O","N","K","E","Y"),
  c("D","O","N","K","E","Y"),
  c("M","A","K","E"),
  c("M","U","C","K","Y"),
  c("C","O","K","I","E")
)

trans <- as(transactions, "transactions")

itemsets <- apriori(
  trans,
  parameter = list(
    target = "frequent itemsets",
    supp = 0.5
  )
)

inspect(itemsets)

rules <- apriori(
  trans,
  parameter = list(
    supp = 0.5,
    conf = 0.8
  )
)

inspect(rules)