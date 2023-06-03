# Logical Operators
#   - And &
#   - Or |
#   - Less than <
#   - Greater than >
#   - Less than or equal to <=
#   - Greater than or equal to >=
#   - Equal ==
#   - Not Equal !=
#   - Not !

## Example 1:
n1 <- 20
n2 <- 30

### Is it equal?
n1 == n2

### Is it not equal?
n1 != n2

### Is n1 greater than n2?
n1 > n2

### Is n1 less than n2?
n1 < n2


## Example 2:
array1 <- c(1:10)
array1
typeof(array1)

### Take values greater than 8
### and less than 5 from the array
x1 <- array1[ (array1 > 8) | (array1 < 5)]
x1
typeof(x1)

## Example 3:
array2 <- c(1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)
array2
typeof(array2)

### Take integers greater than 2 from the array
x2 <- array2[ (array2 > 2) & (floor(array2) == array2)]
x2
typeof(x2)


## Summary for Example 2 and 3:
## In R, the square brackets [ ] are used for subsetting or 
## extracting elements from a vector, matrix, or data frame 
## based on certain conditions or indices. The general syntax 
## for subsetting is object[condition], where object represents 
## the data structure from which you want to extract elements, 
## and condition specifies the criteria for selecting the elements.
