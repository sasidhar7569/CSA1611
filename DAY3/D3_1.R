install.packages("arules")
library(arules)

transactions <- list(
  c("a","d","e"),
  c("a","b","c","e"),
  c("a","b","d","e"),
  c("a","c","d","e"),
  c("b","c","e"),
  c("b","d","e"),
  c("c","d"),
  c("a","b","c"),
  c("a","d","e"),
  c("a","b","e")
)

trans <- as(transactions, "transactions")

rules <- apriori(_
  trans,
  parameter = list(
    supp = 0.3,
    conf = 0.5
  )
)
