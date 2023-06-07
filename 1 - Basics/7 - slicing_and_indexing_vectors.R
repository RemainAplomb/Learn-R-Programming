#===============================================================

# Slicing and Indexing Vectors

#===============================================================

## Sample Vectors
sample1_vector <- c(11.11, 8.8, 23.0)
print(sample1_vector)
names(sample1_vector)<-paste0("c",1:length(sample1_vector))
print(sample1_vector)

sample2_vector <- seq(11, 230, 8)
print(sample2_vector)
names(sample2_vector)<-paste0("c",1:length(sample2_vector))
print(sample2_vector)

#===============================================================

## Index position
### Take value of the element in 3rd index/position
sample1_vector[3]
sample2_vector[3]

### Take value from 3rd index to 4th index
sample1_vector[3:4]
sample2_vector[3:4]

### Take values from the indexes specified in another vector
sample1_vector[c(1, 3, 4)]
sample2_vector[c(1, 3, 4)]

sample1_vector[c(1, 2, 7)]
sample2_vector[c(1, 2, 7)]

#===============================================================

## Getting Index value using names
sample1_vector[c("c2")]
sample2_vector[c("c2")]

sample1_vector["c7"]
sample2_vector["c7"]

sample1_vector[c("c2","c1","c20")]
sample2_vector[c("c2","c1","c20")]

#===============================================================

## Getting index value using logical values
sample1_vector[c(F, T, F, F, T, F, F, F, T, F, F, F, F, T)]
sample2_vector[c(F, T, F, F, T, F, F, F, T, F, F, F, F, T)]

sample1_vector[c(T,F)]
sample2_vector[c(T,F)]


#===============================================================

## Excluding indexes to get the remaining values

### This will exclude index 3
sample1_vector[-3]
sample2_vector[-3]

## This will exclude index 1 and 4
sample1_vector[c(-1,-20)]
sample2_vector[c(-1,-20)]

#===============================================================

## Take vector values using comparison

### Everything less than 11 will be taken
sample1_vector[sample1_vector<11]

### Everything greater than 11 will be taken
sample2_vector[sample2_vector>11]

#===============================================================

## Using a variable as condition
condition1 <- sample1_vector<=27
sample1_vector[condition1]

condition2 <- sample2_vector<=27
sample2_vector[condition2]

#===============================================================
