#install.packages("readxl")
#install.packages("openxlsx")
#install.packages("xml2")


library(readxl)
library(openxlsx)
write.xlsx(iris[1:5, ], "sample.xlsx")
excel_data <- read_excel("sample.xlsx")
print(excel_data)