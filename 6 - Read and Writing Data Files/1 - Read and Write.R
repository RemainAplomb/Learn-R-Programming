#===============================================================

# Read and Write for Data Files

#===============================================================

# Creating sample data
data <- data.frame(
  Name = c("John", "Jane", "David"),
  Age = c(25, 30, 28),
  Gender = c("Male", "Female", "Male")
)

##-------------

# Writing data to a CSV file
write.csv(data, "data.csv", row.names = FALSE)

##-------------

# Writing data to a tab-delimited text file
write.table(data, "data.txt", sep = "\t", row.names = FALSE)

##-------------

# Writing data to an Excel file
install.packages("writexl")
library(writexl)
write_xlsx(data, "data.xlsx")

#===============================================================

# Reading data from a CSV file
data_csv <- read.csv("data.csv")
head(data_csv)

##-------------

# Reading data from a tab-delimited text file
data_txt <- read.delim("data.txt", sep = "\t")
head(data_csv)

##-------------

# Reading data from an Excel file
install.packages("readxl")  # Install the readxl package
library(readxl)  # Load the readxl package
data_xlsx <- read_excel("data.xlsx")  # Read data from the Excel file
head(data_xlsx)

#===============================================================

