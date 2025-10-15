num_data <- iris[, 1:4]
cor_matrix <- cor(num_data)
print(cor_matrix)

#install.packages("corrplot")
library(corrplot)
corrplot(cor_matrix)

anova_model <- aov(Sepal.Length ~ Species, data = iris)
summary(anova_model)