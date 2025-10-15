data(mtcars)
model <- lm(mpg ~ wt + hp, data = mtcars)
summary(model)
predicted_mpg <- predict(model)

plot(mtcars$mpg, predicted_mpg, 
     xlab = "Actual MPG", ylab = "Predicted MPG", 
     main = "Actual vs Predicted MPG")
abline(0, 1, col = "red")