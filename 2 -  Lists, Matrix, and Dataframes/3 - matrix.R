#===============================================================

# Matrix
# In matrix, we have a two-dimensional collection of
# data elements

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

## Selection and Indexing
sales_vector <- c(15,30,NA,25,50,35,70,40,80,11,33,27,23,19,NA,38)
sales_matrix <- matrix( sales_vector, nrow = 4, ncol = 4, byrow = T)
print(sales_matrix)

## Add dimension names
col_names <- c( "Shop1", "Shop2", "Shop3", "Shop4")
row_names <- c( "Chips", "Burgers", "Ice Cream", "Spaghetti")
dimnames(sales_matrix)<- list(col_names, row_names)
print(sales_matrix)

#===============================================================

## Extract Sales (in columns)
## {matrix_name}[ {row}, {column}]
sales_matrix_subset1 <- sales_matrix[,1]
print(sales_matrix_subset1)

sales_matrix_subset2 <- sales_matrix[,1:2]
print(sales_matrix_subset1)

sales_matrix_subset3 <- sales_matrix[,c(1,3)]
print(sales_matrix_subset1)

#===============================================================

## Extract Sales (in rows)
## {matrix_name}[ {row}, {column}]
sales_matrix_subset4 <- sales_matrix[1,]
print(sales_matrix_subset4)

sales_matrix_subset5 <- sales_matrix[1,]
print(sales_matrix_subset5)

sales_matrix_subset6 <- sales_matrix[1:2,]
print(sales_matrix_subset6)

sales_matrix_subset7 <- sales_matrix[c(1,3),]
print(sales_matrix_subset7)

sales_matrix_subset8 <- sales_matrix[2,2]
print(sales_matrix_subset8)

sales_matrix_subset9 <- sales_matrix[2,2:4]
print(sales_matrix_subset9)

#===============================================================

## Extract sales (in rows and columns)
## {matrix_name}[ {row}, {column}]
sales_matrix_subset10 <- sales_matrix[3:4,2:3]
print(sales_matrix_subset10)

sales_matrix_subset11 <- sales_matrix[2:4,c(1,4)]
print(sales_matrix_subset11)

#===============================================================

## Get the sales of shop1 in burgers and spaghetti
shop1_sales <- sales_matrix["Shop1", c(2, 4)]
print(shop1_sales)

## Get ice cream sales of shop3 and shop4
icecream_sales <- sales_matrix[c("Shop3", "Shop4"), 3]
print(icecream_sales)

## Find the average sales of shop4
shop4_avg_sales <- mean(sales_matrix[c("Shop4"),], na.rm = T)
print(shop4_avg_sales)

#===============================================================

## Find the average sales of all shops, and append it into sales
## apply( {matrix_variable}, {1/2}, {operation}, {remove null})
shops_avg_sales <- apply(sales_matrix, 1, mean, na.rm = T)
print(shops_avg_sales)

add_avg_sales <- cbind( sales_matrix, shops_avg_sales)
print(add_avg_sales)

#===============================================================

## Check whether the shop has met its average sales target
sales_targets <- c( 30, 30, 30, 30)

met_sales_target <- ( add_avg_sales[,c("shops_avg_sales")] > sales_targets)
print(met_sales_target)
sum(met_sales_target, na.rm = T)
print(met_sales_target)

add_met_sales_target <- cbind( add_avg_sales, met_sales_target)
print(add_met_sales_target)

#===============================================================