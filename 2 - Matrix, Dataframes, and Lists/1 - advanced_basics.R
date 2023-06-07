#===============================================================

# Advanced Basics

#===============================================================

## NA Values
## Creating a vector with numeric values and NA
sales_vector <- c(10, 20, NA, 40, 50, 60, 70) 
print(sales_vector)

#===============================================================
## Creating a vector with day names
days <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")

## Assigning day names to the vector (Note: there is a typo in variable name)
names(sales_Vector) <- days 
print(sales_Vector)

#===============================================================

## Adding vectors with NA value
## Note:
##    - When performing operations on the 
##      vector, the names will most likely 
##      disappear
# Adding 5 to each element of the vector
sales_vector <- sales_vector + 5
print(sales_vector)

#===============================================================

## Vector Subsets
### In the code sales_vector[{parameter1}:{parameter2}], the parameters 
### parameter1 and parameter2 are used to specify the range of indices you want 
### to select from the sales_vector vector.

### Here's an explanation of how the parameters work:

### {parameter1}: This represents the starting index of the range. It determines 
### which element of the vector you want to start with.

### {parameter2}: This represents the ending index of the range. It determines 
### which element of the vector you want to end with.

### When you specify sales_vector[{parameter1}:{parameter2}], R will select a 
### subset of elements from the sales_vector vector starting from index 
### parameter1 and ending at index parameter2.

#===============================================================

### Creating a subset vector with the first three elements
take_top3 <- sales_vector[1:3]
print(take_top3)

#===============================================================

### Calculating the length of the vector
length_sales_vector <- length(sales_vector)  
print(length_sales_vector)

#===============================================================

### Calculating the length of the subset vector
length_top3 <- length(take_top3)  
print(length_top3)

#===============================================================

## Creating a subset vector in reverse order
sales_vector_subset1 <- sales_vector[(length_sales_vector - 1):1]  
print(sales_vector_subset1)

#===============================================================

## Creating a subset vector in reverse order using a different indexing approach
sales_vector_subset2 <- sales_vector[3:1]
print(sales_vector_subset2)

#===============================================================

## Creating a subset vector in reverse order using length
sales_vector_subset3 <- sales_vector[length_sales_vector:1] 
print(sales_vector_subset3)

#===============================================================

## Creating a subset vector with the last three elements
sales_vector_subset4 <- sales_vector[(length_sales_vector-2):length_sales_vector] 
print(sales_vector_subset4)

#===============================================================

## Take all values in that is less than 25
sales_vector_subset5 <- sales_Vector < 25
print(sales_vector_subset5)

#===============================================================

## Remove indexes with NA values
sales_vector_subset6 <- na.omit(sales_vector[sales_vector] < 25)
print(sales_vector_subset6)

#===============================================================

## Take values that are divisible by 3
(sales_vector %% 3) == 0
sales_vector[ (sales_vector %% 3) == 0 ]
sales_vector_subset7 <- na.omit(sales_vector[ (sales_vector %% 3) == 0 ])

#===============================================================

## If there's an NA value in the vector, it will return NA
sales_vector_sum <- sum(sales_vector)
print(sales_vector_sum)

#===============================================================

## To avoid that, we can use na.rm to remove NA values when 
## doing operations.
sales_vector_sum2 <- sum(sales_vector, na.rm=T)

#===============================================================

## Other operations using na.rm
sales_vector_mean <-mean(sales_vector,na.rm=T)
sales_vector_max <-max(sales_vector,na.rm=T)
sales_vector_min <-min(sales_vector,na.rm=T)
sales_vector_sd <-sd(sales_vector,na.rm=T)
sales_vector_sqrt <-sqrt(sales_vector) 

#===============================================================