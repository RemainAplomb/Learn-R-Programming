#===============================================================

# Operations on vectors

# These are examples on what you can 
# do to your vectors

#===============================================================

## Arithmetic operation on vectors
sample1_vector <- c(6, 8, 10)
sample2_vector <- c(11, 10, 9)

## Adding/Sum
summed_Vector <- sample1_vector + sample2_vector
print(summed_Vector)
class(summed_Vector)
typeof(summed_Vector)

## Subtraction
subtracted_vector <- sample1_vector - sample2_vector
print(subtracted_vector)
class(subtracted_vector)
typeof(subtracted_vector)

## Multiplication/Product
product_vector <- sample1_vector * sample2_vector
print(product_vector)
class(product_vector)
typeof(product_vector)

## Division
divided_vector <- sample1_vector / sample2_vector
print(divided_vector)
class(divided_vector)
typeof(divided_vector)

#===============================================================

## Math functions on a single vector
sample3_vector <- c(8, 11, 23)

sample3_sum <- sum(sample3_vector)
print(sample3_sum)
class(sample3_sum)
typeof(sample3_sum)

sample3_standard_deviation <- sd(sample3_vector)
print(sample3_standard_deviation)
class(sample3_standard_deviation)
typeof(sample3_standard_deviation)

sample3_variance <- var(sample3_vector)
print(sample3_variance)
class(sample3_variance)
typeof(sample3_variance)

sample3_product <- prod(sample3_vector)
print(sample3_product)
class(sample3_product)
typeof(sample3_product)

sample3_maximum_value <- sum(sample3_vector)
print(sample3_maximum_value)
class(sample3_maximum_value)
typeof(sample3_maximum_value)

sample3_minimum_value <- sum(sample3_vector)
print(sample3_minimum_value)
class(sample3_minimum_value)
typeof(sample3_minimum_value)

#===============================================================

## Comparison operators on vectors
sample4_vector <- c(66, 88, 100)
sample5_vector <- c(111, 101, 99)

## Greater than
sample4_vector > sample5_vector

## Less than
sample4_vector < sample5_vector

## Not Equal
sample4_vector != sample5_vector

## Equal
sample4_vector == sample5_vector

## Comparison operators on vectors using single value
sample4_vector <= 88

#===============================================================
