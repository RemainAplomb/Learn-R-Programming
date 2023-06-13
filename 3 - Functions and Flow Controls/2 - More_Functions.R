#===============================================================

# More Function Examples

#===============================================================

## A function for getting the cylinder volume
sample_function1 <- function(cylinderRadius=8, cylinderHeight=8) {
  return ( (pi)* (cylinderRadius**2) *(cylinderHeight) )
}

sample_function1(11, 11)

## Check the args and body

args(sample_function1)
body(sample_function1)

#===============================================================

## Function for fibonacci sequence
sample_function2 <- function(n=8){
  if (n<=1) {
    return (n)
  }
  
  return (sample_function2(n-1) + sample_function2(n-2))
}

sample_function2()

#===============================================================

## Inheritance through S3 Classes
# Define a generic function for area
area <- function(object) {
  UseMethod("area")
}

# Define the method for the parent class "circle"
area.circle <- function(object) {
  return(pi * object$radius^2)
}

# Define the method for the child class "cylinder"
area.cylinder <- function(object) {
  return(2 * pi * object$radius * object$height + 2 * area(object))
}

# Create an object of the parent class
circle <- list(
  radius = 5
)
class(circle) <- "circle"

# Create an object of the child class
cylinder <- list(
  radius = 5,
  height = 10
)
class(cylinder) <- "cylinder"

# Call the area() function on the objects
print(area(circle))    # Calls area.circle() for parent class
print(area(cylinder))  # Calls area.cylinder() for child class


#===============================================================

## Function to see whether a student passed
sample_function3 <- function(grade= 80) {
  if (grade > 90){
    return ("Great")
  } else if (grade > 80){
    return ("Good")
  } else if(grade>=75 & grade<=80){
    return ('Passed!')
  } else{
    return ("Failed!")
  }
}

sample_function3()
sample_function3(75)
sample_function3(81)
sample_function3(95)

#===============================================================


