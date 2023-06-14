#===============================================================

# Factors
# Factors are a type of data structure in R used 
# to represent categorical variables. They are 
# used to store and manipulate data that consists 
# of distinct levels or categories. Factors are 
# created using the factor() function.

#===============================================================

## Convert Vector to Factor

## Create a vector of categorical data
category <- c("A", "B", "A", "C", "B", "A")

## Convert the vector into a factor
factor_category <- factor(category)

## Print the factor
print(factor_category)

#===============================================================

## Converting vector to list

## Create a vector
my_vector <- c("apple", "banana", "pineapple")

## Convert vector to list
my_list <- as.list(my_vector)

## Print the list
print(my_list)

#===============================================================

## Converting vector to matrix
## Create a vector
my_vector <- c(1, 2, 3, 4, 5, 6)

## Convert vector to matrix
my_matrix <- matrix(my_vector, nrow = 2)

## Print the matrix
print(my_matrix)


#===============================================================

## Converting list to Factor
## Create a list
my_list <- list("apple", "banana", "pineapple")

## Convert list to factor
my_factor <- as.factor(unlist(my_list))

## Print the factor
print(my_factor)

#===============================================================

## Converting matrix to Factor
## Create a matrix
my_matrix <- matrix(c("red", "green", "blue", "red", "green", "blue"), nrow = 2)

## Convert matrix to factor
my_factor <- as.factor(my_matrix)

## Print the factor
print(my_factor)


#===============================================================

## Default Nominal Factor

## In R, a nominal factor is a categorical variable where the 
## levels have no natural order or ranking. By default, when 
## you create a factor in R without specifying any levels, 
## it will be treated as a nominal factor.

## Create a vector of values
my_vector <- c("A", "B", "C", "A", "B", "C")

## Create a default nominal factor
my_factor <- factor(my_vector)

## Print the factor
print(my_factor)

#===============================================================

## Ordinal Factor
## In R, an ordinal factor is a categorical variable 
## where the levels have a specific order or ranking. 
## To create an ordinal factor, you need to specify 
## the levels in the desired order.

## Create a vector of values
my_vector <- c("Low", "Medium", "High", "Low", "Medium", "High")

## Define the levels in the desired order
factor_levels <- c("High", "Low", "Medium")

## Create an ordinal factor
my_factor <- factor(my_vector, levels = factor_levels, ordered = TRUE)

## Print the factor
print(my_factor)

## Access the levels of the factor
factor_levels <- levels(my_factor)

## Print the levels
print(factor_levels)

## Check if the factor is ordered
is_ordered <- is.ordered(my_factor)

## Print the result
print(is_ordered)

# Sort the factor based on levels
sorted_factor <- ordered(my_factor, levels = c("High", "Medium", "Low"))

# Print the sorted factor
print(sorted_factor)

## Observation:
##    - The factor level will not necessarily immediately
##      update the sorting of the factor

#===============================================================

## Ordered Factor based on user's inputted order
create_ordered_factor <- function(factorThis, isOrdered = TRUE, levels = NULL, labels = NULL) {
  if (is.null(levels) && is.null(labels)) {
    ordered_factor <- factor(factorThis, ordered = isOrdered)
  } else if (is.null(labels)) {
    ordered_factor <- factor(factorThis, ordered = isOrdered, levels = levels)
  } else if (is.null(levels)) {
    ordered_factor <- factor(factorThis, ordered = isOrdered, labels = labels)
  } else {
    ordered_factor <- factor(factorThis, ordered = isOrdered, levels = levels, labels = labels)
  }
  return(ordered_factor)
}

## Define a vector of values
Type <- c("s", "m", "l", "m", "s", "l")

## Create an ordered factor without specifying levels or labels
Type.factor1 <- create_ordered_factor(Type)
print(Type.factor1)

## Create an ordered factor with specified levels
Type.factor2 <- create_ordered_factor(Type, levels = c("s", "m", "l"))
print(Type.factor2)

## Create an ordered factor with specified levels and labels
Type.factor3 <- create_ordered_factor(Type, levels = c("s", "m", "l"), labels = c("small", "medium", "large"))
print(Type.factor3)

#===============================================================

## Function to compare a sample value at specific indices in a factor
compare_sample_value <- function(factor, sample_value, indices) {
  result <- factor[indices] == sample_value
  return(result)
}

# Define a factor
my_factor <- factor(c("A", "B", "C", "D", "E"))

# Compare sample value at specific indices
sample_value <- "C"
indices <- c(1, 3, 5)
result <- compare_sample_value(my_factor, sample_value, indices)

# Print the result
print(result)

#===============================================================

## Function to check for duplicate value at a specific 
## index in a factor and return indices of duplicates
check_duplicate_at_index <- function(factor, index) {
  value <- factor[index]
  duplicate_indices <- which(factor == value)
  return(duplicate_indices)
}

## Define a factor
my_factor <- factor(c("A", "B", "C", "A", "B", "C"))

## Check for duplicates at index 3
index <- 3
duplicate <- check_duplicate_at_index(my_factor, index)

## Print the result
print(duplicate)

#===============================================================

## Creation of Sequence
create_factor_from_sequence <- function(sequence, labels = NULL) {
  if (is.null(labels)) {
    factor_sequence <- factor(sequence)
  } else {
    factor_sequence <- factor(sequence, labels = labels)
  }
  return(factor_sequence)
}

## Example 1: Create a factor from a sequence without custom labels
sequence1 <- 1:5
factor1 <- create_factor_from_sequence(sequence1)
print(factor1)

## -----

## Example 2: Create a factor from a sequence with custom labels
sequence2 <- 1:5
labels2 <- c("One", "Two", "Three", "Four", "Five")
factor2 <- create_factor_from_sequence(sequence2, labels = labels2)
print(factor2)

#===============================================================

## Create a factor from a sequence
sequence <- 1:5
factor_sequence <- factor(sequence)
print(factor_sequence)
## Output: 1 2 3 4 5
## Levels: 1 2 3 4 5
## Comment: The factor levels are based on the unique values 
## in the sequence, in the order of appearance.

## -----

## Create a factor from a vector
vector <- c(5, 2, 3, 1, 4)
factor_vector <- factor(vector)
print(factor_vector)
## Output: 5 2 3 1 4
## Levels: 1 2 3 4 5
## Comment: The factor levels are based on the unique values 
## in the vector, in the order of appearance.

## -----

## Create a factor from a list
list <- list(c(3, 2, 1, 4, 5))
factor_list <- factor(list[[1]])
print(factor_list)
## Output: 3 2 1 4 5
## Levels: 1 2 3 4 5
## Comment: The factor levels are based on the unique values 
## in the list (list[[1]]), in the order of appearance.

## -----

## Note: Factors are typically created from vectors, not lists. 
## When creating a factor from a list, ensure that the list 
## contains only a single vector of values to represent the factor.

## -----

## Create a factor from a character vector
vector <- c("zebra", "apple", "banana", "cat", "dog")
factor_vector <- factor(vector)
print(factor_vector)
## Output: zebra apple banana cat dog
## Levels: apple banana cat dog zebra

#===============================================================

## Sorting and Reversing Vectors

## Create a numeric vector
vector <- c(5, 2, 8, 1, 4)

## Sort the vector in ascending order
sorted_vector <- sort(vector)
print(sorted_vector)
## Output: 1 2 4 5 8

## -----

## Create a character vector
vector <- c("apple", "banana", "cat", "dog")

## Reverse the vector
reversed_vector <- rev(vector)
print(reversed_vector)
## Output: dog cat banana apple

## -----

## Create a character vector
vector <- c("apple", "banana", "cat", "dog")

## Reverse the vector
reversed_vector <- rev(vector)
print(reversed_vector)
# Output: dog cat banana apple

## -----

## Create a factor
factor_vector <- factor(c("zebra", "apple", "banana", "cat", "dog"))

## Sort the factor in a specific order
sorted_factor <- factor_vector[order(factor_vector, levels = sort(levels(factor_vector)))]
print(sorted_factor)
## Output: apple banana cat dog zebra
## Levels: apple banana cat dog zebra

## -----

## Create a factor
factor_vector <- factor(c("zebra", "apple", "banana", "cat", "dog"))

## Reverse the order of levels in the factor
reversed_factor <- factor(factor_vector, levels = rev(levels(factor_vector)))
print(reversed_factor)
## Output: zebra dog cat banana apple
## Levels: zebra dog cat banana apple

#===============================================================

## Function to combine two vectors using append
combine_vectors <- function(vector1, vector2) {
  combined_vector <- append(vector1, vector2)
  return(combined_vector)
}

## Example usage
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
result <- combine_vectors(vec1, vec2)
print(result)
## Output: 1 2 3 4 5 6

result <- combine_vectors(vec2, vec1)
print(result)
## Output: 4 5 6 1 2 3

#===============================================================

## Function to check if an object is a vector
is_vector <- function(obj) {
  is_vec <- is.vector(obj)
  return(is_vec)
}

## Example usage
vector1 <- c(1, 2, 3)
vector2 <- 4:6
matrix1 <- matrix(1:9, nrow = 3, ncol = 3)

print(is_vector(vector1))  # Output: TRUE
print(is_vector(vector2))  # Output: TRUE
print(is_vector(matrix1))  # Output: FALSE

#===============================================================


