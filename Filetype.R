
if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}
if (!requireNamespace("XML", quietly = TRUE)) {
  install.packages("XML")
}
if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table")
}



library(readxl)
library(XML)
library(data.table)



read_file_by_type <- function(file_path) {
  file_extension <- tolower(tools::file_ext(file_path))
  if (file_extension == "txt") {
    cat("Detected .txt file. Reading as plain text...\n")
    data <- readLines(file_path)
  } else if (file_extension == "csv") {
    cat("Detected .csv file. Reading as CSV...\n")
    data <- read.csv(file_path) # Using fread for efficiency
  } else if (file_extension == "xlsx") {
    cat("Detected .xlsx file. Reading as Excel (first sheet)...\n")
    data <- read_excel(file_path)
  } else if (file_extension == "xml") {
    cat("Detected .xml file. Reading as XML...\n")
    data <- xmlParse(file_path)
  } else {
    stop("Unsupported file type. Please provide a .txt, .csv, .xlsx, or .xml file.")
  }
  return(data)
}


writeLines(c("Line 1", "Line 2", "Line 3"), "example.txt")
write.csv(data.frame(col1 = 1:3, col2 = letters[1:3]), "example.csv", row.names = FALSE)

tryCatch({
  txt_data <- read_file_by_type("D:/Projects/output_local_csv.csv")
  print(txt_data)

  
}, error = function(e) {
  message("An error occurred: ", e$message)
})

file.remove("example.txt", "example.csv")
