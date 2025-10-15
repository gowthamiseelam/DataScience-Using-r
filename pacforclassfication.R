install.packages(c("caret", "e1071", "randomForest", "rpart", "nnet", "xgboost", "ROCR"))
library(caret)        # for classification & regression training
library(e1071)        # for SVM and other models
library(randomForest) # random forest classifier
library(rpart)        # decision tree
library(nnet)         # neural networks
library(xgboost)      # gradient boosting
library(ROCR)         # performance evaluation (ROC curves etc.)