#===============================================================

# Variables

# This is a way for use to store a data value, factor
# of list values or a data set or object.
# Just a note:
#   - R is case sensitive
#   - You can't use numbers in the start of variable name
#   - You can't use spaces between variable name

#===============================================================

## To assign a variable, you will need to use "<-"
example <- "Hello World!"

#===============================================================

## To see the data type of variable, use typeof({variableName})
typeof(example)

#===============================================================

## To which class your variable belongs
class(example)

#===============================================================

## To display the value inside your variable, just use:
example

#===============================================================

## Or you can also use print
print(example)

#===============================================================

## Paste function
print(paste('hello','students'))

#===============================================================

##Sep is for the chosen separator between the pasted items
print(paste('hello','students!',sep=', ')) 

#===============================================================
