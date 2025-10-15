
data(iris)
numerical_iris_data <- iris[, 1:4]
correlation_matrix <- cor(numerical_iris_data)
print("Correlation matrix of Iris numerical data: ")
print(correlation_matrix)
library(corrplot)
print("Visualization of the COrrelation matrix: ")
corrplot(correlation_matrix,method="circle",type='full',t1.col="black",t1.srt=45,addCoef.col="black",number.cex=0.7)
