#===============================================================

# Matrix

#===============================================================

## Creating matrix
sample <- 15:30
sample_matrix1 <- matrix(sample)
print(sample_matrix1)

#===============================================================

## Matrix Creation
sample_matrix2 <- matrix(0, 3, 3)
print(sample_matrix2)

sample_matrix3 <- matrix( 1:9, 3, 3 )
print(sample_matrix3)

sample_matrix4 <- matrix( 1:9, nrow= 3, byrow=T)
print(sample_matrix4)

sample_matrix5 <- matrix( 1:9, 3, 3, byrow=T)
print(sample_matrix5)

#===============================================================

## Using vectors to create matrix
sample_vector1 <- c(1, 10,100,10000,100000)
sample_vector2 <- c(50,100,200,400,800)

merge_sample_vectors <- c(sample_vector1, sample_vector2)
print(merge_sample_vectors)

sample_matrix6 <- matrix( merge_sample_vectors, byrow = TRUE, nrow = 2)
print(sample_matrix6)

#===============================================================

## Adding names to columns and rows
## Use colnames() for columns
## Use rownames() for rows
column_names <- c( "Mon", "Tue", "Wed", "Thu", "Fri")
row_names <- c( "row1", "row2")

colnames(sample_matrix6) <- column_names
row_names(sample_matrix6) <- row_names
print(sample_matrix6)

#===============================================================

## Functions with matrix

## Count number of rows
number_of_rows <- nrow(sample_matrix6)
print(number_of_rows)

## Count number of columns
number_of_columns <- ncol(sample_matrix6)
print(number_of_columns)

## Count the dimension of the matrix (i.e. Columns and Rows)
dimension <- dim(sample_matrix6)
print(dimension)

## Get the row names of the matrix
row_names <- rownames(sample_matrix6)
print(row_names)

## Get the column names of the matrix
column_names <- colnames(sample_matrix6)
print(column_names)

## Get the dimension names of the matrix
dimension_names <- dimnames(sample_matrix6)
print(dimension_names)

#===============================================================

## Matrix Arithmetic Operations

sample_matrix7 <- matrix(1:50,byrow=TRUE,nrow=5)
print(sample_matrix7)

## Addition
8 + sample_matrix7

## Subtraction
8 - sample_matrix7

## Multiplication
8 * sample_matrix7

## Reciprocal Division
8 / sample_matrix7

## Quotient Division
sample_matrix7 / 8

## Exponent
sample_matrix7 ^ 8

#===============================================================

## Matrix to Matrix Arithmetic Operations
sample_matrix7 + sample_matrix7

sample_matrix7 - sample_matrix7

sample_matrix7 * sample_matrix7

sample_matrix7 / sample_matrix7

#===============================================================

## Row and Column Operations

### Sum
colSums(sample_matrix7)

### Sums
rowSums(sample_matrix7) 

### Means
rowMeans(sample_matrix7)

#===============================================================

## Appending/Adding Rows and Columns to Matrix
## rbind() for rows
## cbind() for columns

### Adding rows and columns to a matrix using rbind() and cbind() function
sample_matrix8 <- c( 125, 130, 135, 140, 145 )

sample_matrix9 <- rbind(sample_matrix6, sample_matrix8)
print(sample_matrix9)

sample_matrix9_average <- rowMeans(sample_matrix9)
print(sample_matrix9_average)

sample_matrix10 <- cbind(sample_matrix9, sample_matrix9_average)
print(sample_matrix10)

#===============================================================
