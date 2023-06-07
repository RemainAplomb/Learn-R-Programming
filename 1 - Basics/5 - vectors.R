#===============================================================

# Vectors

# It is a sequence of data elements of the 
# same basic type.
# To create a vector, we use the function c()

#===============================================================

## Create simple vectors
## Vector with numeric elements
simple_vector<-c(10,20,30)
print(simple_vector)
class(simple_vector)

#===============================================================

## Vector with character elements
string_vector<-c("a","b","c")
print(string_vector)
class(string_vector)

#===============================================================

## Vector with boolean values
bool_vector<-c(TRUE,FALSE,TRUE)
print(bool_vector)
class(bool_vector)

#===============================================================

## Displaying multiple vectors at once
simple_vector;string_vector;bool_vector

#===============================================================

## If there's a string in the vector,
## the vector will have a class of character
assorted_string_vector <- c("a", 1, FALSE)
print(assorted_string_vector)
class(assorted_string_vector)
typeof(assorted_string_vector)

#===============================================================

## If the vector contains boolean and numeric,
## the vector's class will be numeric
## TRUE will be converted to 1
## FALSE will be converted to 0
assorted_numeric_vector <- c(TRUE, 1, FALSE)
print(assorted_numeric_vector)
class(assorted_numeric_vector)
typeof(assorted_numeric_vector)

#===============================================================

## Generating vector values in range
## c({Starting_value}:{ending_value})
in_range_vector<-c(1:20)
print(in_range_vector)
class(in_range_vector)
typeof(in_range_vector)

#===============================================================

## Generating vector values using 
## sequential function
squential_vector<-seq(1,20)
print(squential_vector)
class(squential_vector)
typeof(squential_vector)

#===============================================================

## Generating vector with n increment
## seq({starting_value}, {ending_value}, {length_of_step})
odd_vector<-seq(1,20,2)
print(odd_vector)
class(odd_vector)
typeof(odd_vector)

#===============================================================

even_vector<-seq(1,20,2)
print(even_vector)
class(even_vector)
typeof(even_vector)

#===============================================================

## Shortcut to generating vector
shortcut_vector <- 1:16
print(shortcut_vector)
class(shortcut_vector)
typeof(shortcut_vector)

#===============================================================

## Creating vectors with m number
## of elements
odd_m_vector<-seq(from=11,by=2,length.out=8)
print(odd_m_vector)
class(odd_m_vector)
typeof(odd_m_vector)

#===============================================================

even_m_vector<-seq(from=112,by=2,length.out=11)
print(even_m_vector)
class(even_m_vector)
typeof(even_m_vector)

#===============================================================

## Vector with corresponding names
grade_vector <- c(72,71,68,73,69,75,71)
print(grade_vector)
class(grade_vector)
typeof(grade_vector)

#===============================================================

names(grade_vector) <- c('Math','Science','History','Filipino','English','MAPEH','Good Conduct')
grade_vector

#===============================================================

## Another way to create named vectors
subjects <- c('Math','Science','History','Filipino','English','MAPEH','Good Conduct')
grade_vector2 <- c(72,71,68,73,69,75,71)
names(grade_vector2) <- subjects
print(grade_vector2)
class(grade_vector2)
typeof(grade_vector2)

#===============================================================