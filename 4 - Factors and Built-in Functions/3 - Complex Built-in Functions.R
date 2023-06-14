#===============================================================

# Complex Built-in Functions

#===============================================================

## apply(): Applies a function to each row or column of 
## a matrix, or to each element of a vector or list.
matrix <- matrix(1:12, nrow = 3)
result <- apply(matrix, 1, sum)  # Apply sum function to each row
print(matrix)
print(result)  # Output: 15 42 69

#===============================================================

## lapply(): Applies a function to each element of a 
## list and returns a list of results.
list <- list(a = 1:3, b = 4:6, c = 7:9)
result <- lapply(list, mean)  # Apply mean function to each element of the list
print(list)
print(result)  # Output: List of means: 2, 5, 8

#===============================================================

## sapply(): Simplifies the result of lapply() by 
## automatically simplifying the output to a vector 
## or matrix if possible.
list <- list(a = 1:3, b = 4:6, c = 7:9)
result <- sapply(list, mean)  # Apply mean function to each element of the list and simplify result
print(list)
print(result)  # Output: Vector of means: 2, 5, 8

#===============================================================

## merge(): Combines two or more data frames based on 
## common columns, similar to SQL join operations.
df1 <- data.frame(id = c(1, 2, 3), value1 = c("A", "B", "C"))
df2 <- data.frame(id = c(2, 3, 4), value2 = c("X", "Y", "Z"))
merged_df <- merge(df1, df2, by = "id")  # Merge based on common "id" column
print(merged_df)  # Output: Merged data frame with matched rows based on "id"

#===============================================================

## aggregate(): Computes summary statistics (e.g., 
## mean, sum, count) on subsets of a data frame 
## based on grouping variables.
df <- data.frame(group = rep(c("A", "B"), each = 3), value = 1:6)
summary <- aggregate(value ~ group, data = df, FUN = mean)  # Compute mean value for each group
print(df)
print(summary)  # Output: Summary statistics by group

## Note:
##  - this will take the mean of the values in each group.
##  - In this instance, we have 2 groups ( A and B )

#===============================================================

## aggregate() (with formula): Computes summary 
## statistics on subsets of a data frame based 
## on formula specifications.
df <- data.frame(group = c("A", "A", "B", "B"), value = c(10, 20, 15, 25))
summary <- aggregate(value ~ group, data = df, FUN = function(x) c(mean = mean(x), sum = sum(x)))
print(df)
print(summary)  # Output: Summary statistics by group: A 15, 30, B 20, 40

#===============================================================

## grep(): Searches for patterns within a 
## character vector and returns the indices 
## of matching elements.
vector <- c("apple", "banana", "cherry", "grape")
matching_indices <- grep("a", vector)  # Find indices of elements containing "a"
print(matching_indices)  # Output: 1 2 4

#===============================================================

## strsplit(): Splits a character vector 
## into substrings based on a specified delimiter.
string <- "Hello,World,How,Are,You"
split_vector <- strsplit(string, ",")  # Split the string at ","
print(split_vector)  # Output: List of character vectors: "Hello" "World" "How" "Are" "You"

#===============================================================

## table(): Creates a frequency table from 
## categorical variable, counting the occurrences 
## of each category.
vector <- c("apple", "banana", "cherry", "banana", "apple")
frequency_table <- table(vector)  # Create a frequency table
print(frequency_table)  # Output: Counts of each category: apple 2, banana 2, cherry 1

#===============================================================

## tapply(): Applies a function to subsets of a 
## vector or array, split by one or more factors.
vector <- c(10, 20, 15, 25, 30, 40, 10, 20, 15, 25, 30, 40)
factor <- factor(c(c("A", "B", "A", "B", "A", "B"), c("C", "C", "C", "E", "D", "E")))
result <- tapply(vector, factor, mean)  # Compute mean for each factor level
print(result)  # Output: Mean values for each factor level: A 18.33333, B 28.33333


#===============================================================



