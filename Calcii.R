# Define the function
calc <- function(a, b, op) {
  if (op == '+') {
    return(a + b)
  } else if (op == '-') {
    return(a - b)
  } else if (op == '*') {
    return(a * b)
  } else if (op == '/') {
    if (b == 0) {
      return("Error: Division by zero")
    } else {
      return(a / b)
    }
  } else if (op == '%%') {
    return(a %% b)
  } else if (op == '^') {
    return(a ^ b)
  } else {
    return("Invalid Operator")
  }
}

# Save the function in an RData file
save(calc, file = "D:/5f1-DSUR/Calcii.RData")
