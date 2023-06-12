#===============================================================

# Basic Functions

#===============================================================

## Simple Functions
sample_function1 <- function() {
  print(" Za Warudoooo! ")
}
sample_function1()

#===============================================================

## Using Args
sample_functions2 <- function(phrase) {
  print( phrase )
}
sample_functions2()

#===============================================================

## Multiple Args
sample_functions3 <- function(n, m) {
  print(n*m)
}
sample_functions3(3,99)

#===============================================================

## Test with vectors
sample_functions3(c(3, 6, 8, 11), 99)

#===============================================================

## Default Args
sample_functions4 <- function(phrase= " Za Warudoooo! ") {
  print(paste("We Are ", phrase))
}
sample_functions4()
sample_functions4(" The World.")

#===============================================================

## Returning Values
sample_functions5 <- function(first_name="Zhong", last_name = "Yue") {
  print( paste( first_name, " ", last_name ))
}
sample_functions5()
main_character <- sample_functions5()

#===============================================================

## Variable Scopes (Local and Global)
global_variable1 <- "This is a global variable"
global_variable2 <- "This is also a global variable"
sample_functions6 <- function(global_variable1) {
  print(global_variable1)
  print(global_variable2)
  global_variable1 <- "This is now a local variable"
  print(global_variable1)
}

print(global_variable1)
print(global_variable2)
sample_functions6(global_variable1)
print(global_variable1)

#===============================================================
