#Regression Model 
data <- read.csv("C:/Users/admin/Downloads/Admission_Predict.csv")
summary(data)
data$Admission <- ifelse(data$Chance.of.Admit >= 0.75, 1, 0)
model <- glm(Admission ~ GRE.Score + CGPA, data = data, family = binomial)
summary(model)
pseudo_r2 <- 1 - (model$deviance / model$null.deviance)
cat("Pseudo R-squared:", pseudo_r2, "\n")