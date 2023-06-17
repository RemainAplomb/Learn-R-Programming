#===============================================================

# Tidyr package
# It is used for tidying the data
# Its function includes:
#   - gather()
#   - spread()
#   - separate()
#   - unite()

#===============================================================

## Install tidyr
install.packages("tidyr")

## Import
library("tidyr")

#===============================================================

## Gather function
# Example data
data <- data.frame(
  id = 1:3,
  A = c(10, 20, 30),
  B = c(15, 25, 35),
  C = c(18, 28, 38)
)

# Gather columns into key-value pairs
gathered_data <- gather(data, key = "variable", value = "value", A:C)
print(gathered_data)
print(data)

#===============================================================

## Spread function

# Example data
data <- data.frame(
  id = rep(1:3, each = 3),
  variable = c("A", "B", "C"),
  value = c(10, 15, 18, 20, 25, 28, 30, 35, 38)
)

# Spread key-value pairs into separate columns
spread_data <- spread(data, key = "variable", value = "value")
print(spread_data)
print(data)

#===============================================================

## Separate function

# Example data
data <- data.frame(
  full_name = c("John Smith", "Jane Doe", "Michael Johnson")
)

# Split full_name into separate columns for first and last names
separated_data <- separate(data, col = "full_name", into = c("first_name", "last_name"), sep = " ")
print(separated_data)
print(data)

#===============================================================

## Unite function

# Example data
data <- data.frame(
  day = c(1, 2, 3),
  month = c(1, 1, 2),
  year = c(2021, 2022, 2023)
)

# Combine day, month, and year into a single column for full date
united_data <- unite(data, col = "date", day, month, year, sep = "-")
print(united_data)
print(data)

#===============================================================

