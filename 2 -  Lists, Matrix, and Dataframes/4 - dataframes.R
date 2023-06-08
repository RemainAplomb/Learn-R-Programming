#===============================================================

# Dataframes
# The data here are stored in a table format

#===============================================================

## Pre-loaded datasets

## Look into available datasets
data()

#===============================================================

## Choose a data and look at the head
air_passengers_dataset <- data("AirPassengers")
head(air_passengers_dataset)

iris_dataset <- data("iris")
head(iris_dataset)

#===============================================================

## View the dataset
view(air_passengers_dataset)

view(iris_dataset)

#===============================================================

## Summary of a dataset
summary(air_passengers_dataset)

summary(iris_dataset)

#===============================================================

## Structure of a dataset
str(air_passengers_dataset)

str(iris_dataset)

#===============================================================

## Creating custom dataframes
weekdays <- c("Mon", "Tue", "Wed", "Thu", "Fri")
temp_log <- c( 21.3, 27.5, 35.1, 38.8, 40.9)
rain_presence <- c( FALSE, TRUE, TRUE, FALSE, FALSE )

custom_dataframe <- data.frame(weekdays, temp_log, rain_presence)
print(custom_dataframe)
summary(custom_dataframe)
str(custom_dataframe)

#===============================================================

## Indexing in dataframes
### In rows
custom_dataframe[1, ]

### In columns
custom_dataframe[, 1]

#===============================================================

### Using column names
custom_dataframe[, "rain_presence"]

### Extracting multiple data
custom_dataframe[ 1:3, c("weekdays", "rain_presence")]

#===============================================================

### Extracting using dollar sign notation
custom_dataframe$temp_log

custom_dataframe$weekdays

custom_dataframe$rain_presence

#===============================================================

### Extracting using bracket notation
custom_dataframe["weekdays"]

custom_dataframe["temp_log"]

custom_dataframe["rain_presence"]

#===============================================================

## Use subset function for filtering
subset( custom_dataframe, subset = rain_presence == TRUE )

subset( custom_dataframe, subset = temp_log > 30 )

#===============================================================

## Using order function for sorting
sorted.temp_log <- order(custom_dataframe['temp_log'])

## Ascending order
custom_dataframe[sorted.temp_log,]
sorted.temp_log

# Descending order
desc.temp_log <- order(-df['temp_log'])
df[desc.temp_log,]

#===============================================================

## Using dollar notatation with order
sort.temp_log <- order(df$temp_log)
df[sort.temp_log,]

#===============================================================

## Data Frame merging
authors <- data.frame(
  surname = I(c("Ten Years of Remnant Dreams", 
                "Chang Yu", 
                "Rizal", 
                "LKY", 
                "Balagtas")),
  nationality = c("CN", 
                  "CN", 
                  "PH", 
                  "SG", 
                  "PH"),
  deceased = c(rep("no", 2), rep("yes", 3)))

books <- data.frame(
  name = I(c("Ten Years of Remnant Dreams", 
             "Chang Yu", 
             "Rizal",
             "LKY", 
             "Balagtas", 
             "McNeil", 
             "R Core")),
  title = c("Iron Age",
            "Power and Wealth",
            "Noli Me Tangere",
            "One Man's View of the World", 
            "Florante at Laura",
            "The Singapore Story",
            "From Third World to First"),
  other.author = c(NA, 
                   NA, 
                   NA, 
                   NA, 
                   NA, 
                   NA,
                   "Authorrr"))

print(authors)
print(books)

(m1 <- merge(authors, books, by.x = "surname", by.y = "name"))

#===============================================================

## Manipulating dataframes
## runif({length}, {starting_Range}, {ending_range})
sales_report<-data.frame(Id=91:102,
                        Product= rep(c("A", "B", "C"), length.out = 12),
                        Unitprice= as.integer(runif(12, 100, 200)),
                        Qty= as.integer(runif(12,10,20))
)
print(sales_report)

#===============================================================

## Transposing dataframe
## This converts the rows into columns and columns into rows
transponsed_sales_report <- t(sales_report)
View(transponsed_sales_report)
head(transponsed_sales_report)

#===============================================================

## Sorting of dataframe
## Ascending order
sales_report[order(sales_report$Unitprice),]

## Descending order
sales_report[order(sales_report$Unitprice,decreasing = T),]

## This demonstrates sorting the sales_report dataframe 
## based on multiple columns. It first sorts the dataframe 
## on the Product column in ascending order, and then within 
## each level of the Product column, it sorts in descending 
## order based on the Unitprice column. The -sales_report$Unitprice 
## argument in the order() function negates the sorting order of 
## the Unitprice column, resulting in a descending order.
sales_report[order(sales_report$Product,-sales_report$Unitprice),]

#===============================================================

## Dataframe subset
sales_report_subset1 <- subset(sales_report,Product=="B")
print(sales_report_subset1)

# Extract the rows for which Product is A and Unitprice > 150
sales_report_subset2<- subset(sales_report,Product=="C" & Unitprice>150)
print(sales_report_subset2)

# Extract only the first and the fourth column Product is A and Unitprice > 150
sales_report_subset3 <- subset(sales_report,Product=="A" & Unitprice>110,c(1,3))
print(sales_report_subset3)

#===============================================================

## Dataframe merging

sales_report_subset4 <- subset(sales_report,Product=="B")
sales_report_subset5 <- subset(sales_report,Product=="C")
print(sales_report_subset4)
print(sales_report_subset5)

cbind(sales_report_subset4,sales_report_subset5)
rbind(sales_report_subset4,sales_report_subset5)

#===============================================================

## Aggregation
## The aggregate() function returns a new dataframe 
## with the aggregated results. It will have one column 
## for the grouping variable(s) and one column for the 
## aggregated values.
##    - sales_report$Qty: This specifies the column on which 
##    the aggregation operation will be performed. In this 
##    case, it's the Qty column of the sales_report dataframe.
##
##    - list(sales_report$Prod): This argument specifies the 
##      grouping variable(s) for the aggregation. It tells R 
##      to group the data based on the values in the Prod column 
##      of the sales_report dataframe. The list() function is 
##      used here to create a list of grouping variables. You 
##      can specify multiple columns in the list if you want to 
##      grouping based on multiple criteria.
##
##    - sum: This specifies the aggregation function to be 
##      applied. In this case, it's the sum function, which 
##      will calculate the sum of the Qty values within each group.
##
##    - na.rm = TRUE: This argument tells R to remove any 
##      missing values (NA) before performing the aggregation. 
##      The na.rm parameter is set to TRUE to exclude NA values 
##      from the calculation.
aggregate(sales_report$Qty,list(sales_report$Prod),sum,na.rm=T)

#===============================================================