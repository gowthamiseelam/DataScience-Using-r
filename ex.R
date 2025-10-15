data_csv <- read.csv("D:/5F1-DSUR/output_local_csv.csv")

data_csv_path <- read.csv("D:/5F1-DSUR/output_local_csv.csv")

head(data_csv)

data_to_write <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Score = c(85, 92, 78)
)


write.csv(data_to_write, file = "D:/5F1-DSUR/output_local_csv.csv", row.names = FALSE)


