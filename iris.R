library(caret)
library(class)     
library(rpart)     
library(e1071)
library(ggplot2)

set.seed(123)
data(iris)

trainIndex <- createDataPartition(iris$Species, p=0.7, list=FALSE)
train <- iris[trainIndex, ]
test <- iris[-trainIndex, ]

knn_pred <- knn(train[, -5], test[, -5], train$Species, k=3)

# Decision Tree
dt_model <- rpart(Species ~ ., data=train, method="class")
dt_pred <- predict(dt_model, test, type="class")

# SVM
svm_model <- svm(Species ~ ., data=train)
svm_pred <- predict(svm_model, test)

accuracy <- function(pred, true) mean(pred == true)

results <- data.frame(
  Classifier = c("k-NN", "Decision Tree", "SVM"),
  Accuracy = c(
    accuracy(knn_pred, test$Species),
    accuracy(dt_pred, test$Species),
    accuracy(svm_pred, test$Species)
  )
)

print(results)

# Plot accuracy comparison
ggplot(results, aes(x=Classifier, y=Accuracy, fill=Classifier)) +
  geom_bar(stat="identity", show.legend=FALSE) +
  ylim(0, 1) +
  geom_text(aes(label=round(Accuracy, 3)), vjust=-0.5) +
  ggtitle("Classifier Accuracy Comparison") +
  theme_minimal()