library(arules)

transactions <- list(
  c("Milk","Beer","Diapers"),
  c("Bread","Butter","Milk"),
  c("Milk","Diapers","Cookies"),
  c("Bread","Butter","Cookies"),
  c("Beer","Cookies","Diapers"),
  c("Milk","Diapers","Bread","Butter"),
  c("Bread","Butter","Diapers"),
  c("Beer","Diapers"),
  c("Milk","Diapers","Bread","Butter"),
  c("Beer","Cookies")
)

trans <- as(transactions, "transactions")

itemsets <- apriori(
  trans,
  parameter = list(
    target = "frequent itemsets",
    supp = 0.3
  )
)

inspect(itemsets)

rules <- apriori(
  trans,
  parameter = list(
    supp = 0.3,
    conf = 0.5
  )
)

inspect(rules)