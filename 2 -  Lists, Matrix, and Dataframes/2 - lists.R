#===============================================================

# Lists

#===============================================================

## Create sample lists
sample_list1 <- 

sample_list1 <- list(x=c(10,20,30),
                     y=c("a","b","c"),
                     z=c(TRUE,FALSE))
print(sample_list1)

sample_list2 <-list(vec=seq(1:10),
                    mat=matrix(1:9,3,3),
                    lis=list(a=10,b=20))
print(sample_list2)

#===============================================================

## Check whether the lists are recursive
# Recursive variable->Variable that can store values of its own type.
is.recursive(sample_list1)
is.recursive(sample_list2)

#===============================================================

## List Indexing

by_index <- sample_list2[2]
print(by_index)

by_dollar_notation <- sample_list2$mat
print(by_dollar_notation)

by_n_element_m_value <- sample_list2$lis[2]
print(by_n_element_m_value)

by_n_element_m_value <- sample_list2[[3]][2]
print(by_n_element_m_value)

#===============================================================

## Checking length and class
sample_list2_length <- length(sample_list2)
print(sample_list2_length)

sample_list2_class <- class(sample_list2)
print(sample_list2_class)

#===============================================================

## Vector to List
sample_vector1 <- c( 5, 10, 15)
sample_list3 <- as.list(sample_vector1)
print(sample_list3)

## List to vector
sample_vector2 <- unlist(sample_list3)
print(sample_vector2)

#===============================================================

## Vectors to matrix (using dim)
vector_to_matrix <- c( 2, 4, 6, 8 )
dim(vector_to_matrix) <- c( 2, 2 )
print(vector_to_matrix)

#===============================================================
