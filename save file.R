calculator <- function(a, b)
{ result <- list(
  Addition = a + b, 
  Subtraction = a - b, 
  Multiplication = a * b, 
  Division = a / b
)
return(result)
}
res <- calculator(20, 4)
print(res)
saveRDS(res, file = "calculator_output.rds")
read_res <- readRDS("calculator_output.rds")
print(read_res)