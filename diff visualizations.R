slices <- c(30, 20, 15, 35)
labels <- c("A", "B", "C", "D")
piepercent<- round(100 * slices / sum(slices), 1)
pie(slices, labels=paste(labels, piepercent, "%"), main="Categories", col=rainbow(length(slices)))
legend("topright", labels, fill=rainbow(length(slices)), cex=0.8)

temperatures <- c(67, 72, 74, 62, 76, 66, 65, 59, 61, 69, 70, 71, 75, 68)
hist(temperatures, main="Temperatures", xlab="Degrees", breaks=5, col="orange")

categories <- c("Apples", "Bananas", "Oranges", "Grapes")
values <- c(10, 15, 7, 12)
barplot(values, names.arg = categories, main = "Fruit Sales", xlab = "Fruit", ylab = "Number of Sales", col = c("red", "yellow", "orange", "purple"))