#===============================================================

# Flow Controls

#===============================================================

## If else statement
sample_function1 <- function(years_of_service=8, base_salary=125000) {
  if (years_of_service >= 5) {
    bonus <- 0.1 * base_salary
  } else if (years_of_service >= 3) {
    bonus <- 0.07 * base_salary
  } else if (years_of_service >= 1) {
    bonus <- 0.05 * base_salary
  } else {
    bonus <- 0
  }
  
  return(bonus)
}

sample_function1()

#===============================================================

## Switch statements
sample_function2 <- function(position) {
  salary <- switch(position,
                   "Manager" = "100,000 - 150,000",
                   "Senior Developer" = "80,000 - 120,000",
                   "Junior Developer" = "50,000 - 70,000",
                   "Intern" = "20,000 - 30,000",
                   "Other" = "Salary not specified"
  )
  
  return(salary)
}

# Examples
print(sample_function2("Manager"))
print(sample_function2("Senior Developer"))
print(sample_function2("Intern"))
print(sample_function2("Sales Executive"))


#===============================================================

## For loop
## Function that uses for loop to calculate factorial
sample_function3 <- function(n) {
  factorial <- 1  # Initialize factorial variable to store the result
  
  # i is a variable that represents the loop control variable. 
  # It is commonly used as a counter variable in loops. In each 
  # iteration of the loop, i takes on the value of the current 
  # element from the sequence specified in the loop declaration.
  
  # 1:n is a sequence of values over which the loop iterates. 
  # Here, 1 represents the starting value, and n represents 
  # the ending value of the sequence. The : operator is used 
  # to create a sequence from 1 to n, inclusive.
  
  # The for loop iterates over the elements of the specified 
  # sequence, assigning each element to the loop control 
  # variable (i in this case). The loop body contains the 
  # code that will be executed for each iteration of the loop.
  for (i in 1:n) {
    factorial <- factorial * i  # Multiply factorial by each number from 1 to n
  }
  return(factorial)  # Return the factorial value
}

# Example usage
print(sample_function3(5))  # Calculates factorial of 5
print(sample_function3(10)) # Calculates factorial of 10


#===============================================================

## While loop
## Sample function for population growth
sample_function4 <- function(initial_population, growth_rate, target_population) {
  # Initialize variables
  population = initial_population
  years = 0
  
  # Simulate population growth using a while loop
  while (population < target_population) {
    # Update population based on growth rate
    population = population + (population * growth_rate)
    
    # Increment years
    years = years + 1
  }
  
  # Return the number of years it takes to reach the target population
  return(years)
}

# Example usage
initial_population = 1000
growth_rate = 0.03
target_population = 5000

# Call the function and print the result
years_to_reach_target <- sample_function4(initial_population, growth_rate, target_population)
print(paste("It takes", years_to_reach_target, "years to reach a population of", target_population))


#===============================================================

## Repeat Loop
## Function that generates random numbers until a condition is met
sample_function5 <- function() {
  sum_of_numbers <- 0
  
  # Note: 
  #   - To prevent infinite loop, add a break
  #   - Do not use return inside repeat
  repeat {
    # Generate a random number between 1 and 10
    random_number <- sample(1:10, 1)
    
    # Add the random number to the sum
    sum_of_numbers <- sum_of_numbers + random_number
    
    # Check if the sum exceeds 20
    if (sum_of_numbers > 20) {
      break  # Exit the loop if the condition is met
    }
  }
  
  return(sum_of_numbers)
}

# Example usage
print(sample_function5())  # Generates random numbers until the sum exceeds 20


#===============================================================

## Break Statement
## Function that finds the first even number in a sequence
sample_function6 <- function(numbers) {
  for (num in numbers) {
    if (num %% 2 == 0) {
      break  # Breaks the loop when an even number is found
    }
  }
  return(num)  # Returns the first even number
}

# Example usage
sequence1 <- c(1, 3, 5, 7, 8, 9)
first_even1 <- find_first_even(sequence1)
print(first_even1)  # Output: 8

sequence2 <- c(3, 9, 11, 15)
first_even2 <- sample_function6(sequence2)
print(first_even2)  # Output: NA (no even number found)

#===============================================================

## Next Statement
## Function that prints odd numbers from 1 to n
sample_function7 <- function(n) {
  for (i in 1:n) {
    if (i %% 2 == 0) {
      next  # Skips the current iteration for even numbers
    }
    print(i)  # Prints odd numbers
  }
}

# Example usage
sample_function7(10)

#===============================================================

## Complex function with multiple flow controls
## Function that calculates the sum of even numbers in a nested list
calculate_sum <- function(data) {
  total_sum <- 0
  
  for (item in data) {
    if (is.list(item)) {
      # If item is a list, recursively call the function on the sublist
      subtotal <- calculate_sum(item)
      total_sum <- total_sum + subtotal
    } else if (is.numeric(item)) {
      # If item is a numeric value, check if it's even
      if (item %% 2 == 0) {
        total_sum <- total_sum + item
      }
    } else {
      # If item is neither list nor numeric, skip it
      next
    }
  }
  
  return(total_sum)
}

# Example usage
data <- list(1, 2, list(3, 4, list(5, 6)), 7, list(8, 9))
result <- calculate_sum(data)
print(result)  # Calculates the sum of even numbers in the nested list


# Explanation:
# In this example, the calculate_sum function takes a nested list called 
# data as input and calculates the sum of even numbers within the list. 
# It uses a for loop to iterate over each item in the list. Within the 
# loop, it employs various flow controls:
  
# The first if statement checks if the current item is a list using the 
# is.list() function. If it is, the function recursively calls itself 
# (calculate_sum) on the sublist and adds the returned subtotal to the 
# total_sum.

# The second else if statement checks if the current item is a numeric 
# value using the is.numeric() function. If it is, it checks if the 
# number is even using the modulo operator (item %% 2 == 0). If it is, 
# the number is added to the total_sum.

# The else statement handles cases where the current item is neither a 
# list nor a numeric value. It uses the next statement to skip to the 
# next iteration of the loop.

#===============================================================
