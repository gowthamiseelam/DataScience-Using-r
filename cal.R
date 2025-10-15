calculator<- function(n1,n2,op){
  if(op=="+"){
    return (n1+n2)
  }else if(op=="-"){
    return (n1-n2)
  }else if(op=="*"){
    return (n1*n2)
  }else if(op=="^"){
    return (n1^n2)
  }
  else{
    return ("Invalid")
  }
}

print("Welcome to Calculator")
num1 <- readline(prompt="Enter first number: ")
n1<-as.integer(num1)
num2 <- readline(prompt="Enter second number: ")
n2 <- as.integer(num2)


cat("First number:", n1)
print(paste("Second number:", n2))

op<-readline(prompt="Enter operator: ")
x<-calculator(n1,n2,op)
cat(n1,op,n2,"result:",x)

 