read_file <- function(filename)
{ 
  ext <- tools::file_ext(filename)
  if (ext == "csv") {
    data <- read.csv(filename)
  } else if (ext == "txt") {
    data <- read.table(filename, header = TRUE)
  } else if (ext == "xlsx")
  { library(readxl)
    data <- read_excel(filename)
  } else if (ext == "xml")
  { library(xml2)
    data <- read_xml(filename)
  } else {
    stop("Unsupported file type!")
  }
  return(data)
}

write.csv(iris[1:5, ], "iris_sample.csv", row.names = FALSE)
result <- read_file("iris_sample.csv")
print(result)