quality(rules)

inspect(
  sort(
    rules,
    by = "confidence"
  )
)
rules60 <- subset(
  rules,
  subset = confidence >= 0.60
)

inspect(rules60)