library(ggplot2)
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot() +
  labs(title = "Sepal Length Distribution by Species", x = "Species", y = "Sepal Length")

boxplot(c(1,2,5,4,3))




library(ggplot2)
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(color = Species)) +
  labs(title = "Petal Length vs. Petal Width by Species", x = "Petal Length", y = "Petal Width")

plot(c(1,2,6,4,2,6))