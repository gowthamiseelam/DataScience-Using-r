#Linear Regression model 
study_hours<-c(1,2,3,4,5)
exam_score<-c(55,57,67,72,75)
data <- data.frame(study_hours,exam_score)
model<-lm(exam_score~study_hours,data = data)
summary(model)
newdata<-data.frame(study_hours = 3.4)
pred <- predict(model,newdata)
print(pred)

plot(study_hours,exam_score,col = "blue",pch = 19,xlab = "study hours",ylab = "Exam score",
     main = "Linear Regression Example"
)
abline(model,col = "red",lwd = 2)