data(trees)
df <- trees[, c("Girth", "Height")]

set.seed(123)

k <- 3
km_result <- kmeans(df, centers = k)
print(km_result$cluster)

plot(df, col = km_result$cluster, pch = 19, 
     main = "K-Means Clustering",
     xlab = "Girth", ylab = "Height")
points(km_result$centers, col = 1:k, pch = 4, cex = 3, lwd = 3)

dist_mat <- dist(df)
hc_result <- hclust(dist_mat)
plot(hc_result, main = "Hierarchical Clustering Dendrogram")

hc_clusters <- cutree(hc_result, k = k)
print(hc_clusters)

plot(df, col = hc_clusters, pch = 19,
     main = "Hierarchical Clustering",
     xlab = "Girth", ylab = "Height")