#===============================================================

# Dplyr Package
# dplyr is a powerful R package for data manipulation 
# and transformation. It provides a set of easy-to-use functions that allow you to perform common data manipulation tasks efficiently.

#===============================================================

## Install Dplyr package
install.packages("dplyr")

## Import dplyr
library(dplyr)

#===============================================================

## Install built-in package
install.packages('nycflights13')
library('nycflights13')

View(flights)
head(flights)

#===============================================================

## Use filter function to look for specific value
## Create a sample data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  age = c(25, 30, 35, 40),
  city = c("New York", "Chicago", "Los Angeles", "Houston")
)

## Filter rows where name is "Alice"
filtered_df <- filter(df, name == "Alice")

## Print the filtered data frame
print(filtered_df)


##-------------

## For built-in dataset
## Filter the flights data frame
filtered_flights <- filter(flights, carrier == "AA", origin == "JFK")

## View the filtered data frame
View(filtered_flights)

## Display the first few rows of the filtered data frame
head(filtered_flights)

#===============================================================

## Using slice function to select rows
## This extract specific rows from a data frame 
## using the slice() function from the dplyr package, 
## you can follow these steps:

## Use slice to extract specific rows
sliced_flights <- slice(flights, 1:5)  # Extract rows 1 to 5

## View the sliced data frame
View(sliced_flights)

## Display the sliced data frame
sliced_flights

#===============================================================

## Mutate Function
## For adding or modifying columns in a data 
## frame using the mutate() function from the 
## dplyr package,

## Syntax mutate(.data, new_column = expression, ...)
##      - .data: The input data frame or tibble.
##      - new_column: The name of the new column to 
##        be added or an existing column to be modified.
##      - expression: The computation or transformation 
##        to be applied to create the values of the new 
##        column. It can be a combination of existing 
##        column names, literals, and various functions 
##        or operators.
##      - ...: Additional new columns can be specified using the same syntax as new_column = expression.

## Example 1: Add a new column based on existing columns
## mutated_data <- mutate(data, new_column = column1 + column2)

## Example 2: Modify an existing column
## mutated_data <- mutate(data, existing_column = existing_column * 2)

## Example 3: Add multiple new columns
## mutated_data <- mutate(data, new_column1 = column1 + column2, new_column2 = column3 * 3)


## Use mutate to add a new column
mutated_flights <- mutate(flights, new_column = dep_delay - arr_delay)

## View the mutated data frame
View(mutated_flights)

## Display the mutated data frame
mutated_flights

#===============================================================

## Transmute function
## The transmute() function in the dplyr package 
## is similar to the mutate() function, but it differs 
## in one key aspect. While mutate() keeps all existing 
## columns in the output, transmute() only keeps the 
## columns that are explicitly mentioned in the function 
## call. It drops all other columns from the output.

transmuted_flights <- transmute(flights, new_column = dep_delay + arr_delay)

transmuted_flights

head(transmuted_flights)

#===============================================================

## Summarise function
## The summarise() function is used in the dplyr 
##  to calculate summary statistics or 
## aggregate values from a dataset. It allows you 
## to compute single or multiple summary statistics 
## based on groups or the entire dataset.

## The basic syntax of the summarise() function is as follows:
## summarise(data, new_column = function(column))

summary <- summarise(flights, avg_dep_delay = mean(dep_delay), max_arr_delay = max(arr_delay))

print(summary)

summary <- summarise(flights, avg_dep_delay = mean(dep_delay, na.rm = TRUE), max_arr_delay = max(arr_delay, na.rm = TRUE))
print(summary)


#===============================================================

## Summarise Examples:

## Calculate the average air time
summarise(flights, avg_air_time = mean(air_time, na.rm = TRUE))


##-------------

## Calculate the total air time
summarise(flights, tot_air_time = sum(air_time, na.rm = TRUE))

##-------------

## Calculate both the average and total air time
summarise(flights, avg_air_time = mean(air_time, na.rm = TRUE), tot_air_time = sum(air_time, na.rm = TRUE))


#===============================================================

## Complex Examples

## Calculate the average air time for each carrier
## This code groups the flights dataset by the 
## carrier column using group_by(). Then, within 
## each group, it calculates the average air 
## time (avg_air_time) using mean().
flights %>%
  group_by(carrier) %>%
  summarise(avg_air_time = mean(air_time, na.rm = TRUE))

##-------------

## Calculate the total number of flights for 
## each origin airport

## This code groups the flights dataset by 
## the origin column using group_by(). Then, 
## within each group, it counts the number 
## of flights using n().
flights %>%
  group_by(origin) %>%
  summarise(total_flights = n())

##-------------

## Calculate the average delay and total 
## distance for each combination of 
## carrier and origin:

## This code groups the flights dataset 
## by both the carrier and origin columns 
## using group_by(). Then, within each 
## combination of groups, it calculates 
## the average departure delay (avg_delay) 
## and the total distance (total_distance) 
## using mean() and sum() respectively.
flights %>%
  group_by(carrier, origin) %>%
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE),
            total_distance = sum(distance, na.rm = TRUE))

##-------------

## By combining group_by() with summarise(), 
## you can perform calculations on subsets of 
## your data based on different grouping 
## variables, allowing for more complex and 
## insightful summaries of your data.

#===============================================================

