install.packages("rCBA")
library(rCBA)

transactions <- list(
  c("M","O","N","K","E","Y"),
  c("D","O","N","K","E","Y"),
  c("M","A","K","E"),
  c("M","U","C","K","Y"),
  c("C","O","K","I","E")
)

trans <- as(transactions, "transactions")

rules <- fpgrowth(
  trans,
  supp = 0.5,
  conf = 0.8
)

inspect(rules)