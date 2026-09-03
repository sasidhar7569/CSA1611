marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
sorted_marks <- sort(marks)

# Visualizing overall distribution using Histogram
hist(sorted_marks, col = "lightblue", main = "Histogram of Marks Scored", xlab = "Marks")

# (a) Equal-Frequency (Equi-depth) Binning (3 bins)
bin_depth <- split(sorted_marks, ceiling(seq_along(sorted_marks) / (length(sorted_marks)/3)))

# (b) Equal-Width Binning (3 bins)
bin_width <- cut(sorted_marks, breaks = 3)

# (c) Clustering (K-means Binning)
bin_cluster <- kmeans(sorted_marks, centers = 3)