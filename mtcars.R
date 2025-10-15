# Load necessary libraries
library(caret)
library(class)
library(rpart)
library(e1071)
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Load the mtcars dataset and convert the target variable to a factor
data(mtcars)
mtcars$am <- as.factor(mtcars$am) # Convert 'am' to a factor for classification

# Standardize the predictor variables for k-NN and SVM
preProcValues <- preProcess(mtcars[, -9], method = c("center", "scale"))
mtcars_processed <- predict(preProcValues, mtcars)
mtcars_processed$am <- mtcars$am # Add the original, non-scaled target back

# Create data partition
trainIndex <- createDataPartition(mtcars_processed$am, p=0.7, list=FALSE)
train <- mtcars_processed[trainIndex, ]
test <- mtcars_processed[-trainIndex, ]

# k-NN
knn_pred <- knn(train[, -9], test[, -9], train$am, k=3)

# Decision Tree
dt_model <- rpart(am ~ ., data=train, method="class")
dt_pred <- predict(dt_model, test, type="class")

# SVM
svm_model <- svm(am ~ ., data=train)
svm_pred <- predict(svm_model, test)

# Function to calculate accuracy
accuracy <- function(pred, true) mean(pred == true)

# Store the results in a data frame
results <- data.frame(
  Classifier = c("k-NN", "Decision Tree", "SVM"),
  Accuracy = c(
    accuracy(knn_pred, test$am),
    accuracy(dt_pred, test$am),
    accuracy(svm_pred, test$am)
  )
)

# Print the results
print(results)

# Plot accuracy comparison
ggplot(results, aes(x=Classifier, y=Accuracy, fill=Classifier)) +
  geom_bar(stat="identity", show.legend=FALSE) +
  ylim(0, 1) +
  geom_text(aes(label=round(Accuracy, 3)), vjust=-0.5) +
  ggtitle("Classifier Accuracy Comparison on mtcars") +
  theme_minimal()
