
#txt
write.table(iris[1:5, ], file = "sample.txt", sep = "\t", row.names = FALSE)
txt_data <- read.table("sample.txt", header = TRUE, sep = "\t")
print(txt_data)

#csv
write.csv(iris[1:5, ], file = "sample.csv", row.names = FALSE)
csv_data <- read.csv("sample.csv")
print(csv_data)

