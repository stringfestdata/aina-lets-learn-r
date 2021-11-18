# Writing comments
# These are notes for humans, 
# not code for computers

# Open, close and save R scripts
# just like a Word doc

# Send code from script to
# console to execute: Ctrl + Enter

# Use R as a calculator
1 + 1

# R follows order of operations
2+3*4/(5+3)*15/2^2+3*4^2

# Use R to test conditions
# Note the double equal sign
# to test equality... 

5 == 4

10 < 11

6 ^ 2 != 36

# Use R to call functions

sum(1,2,3,4,5)
sqrt(25)
abs(-100)

# Not this!
Sqrt(25)
SQRT(25)

# R is case sensitive

# Use R to get help

help(sqrt)
?sqrt
?plot

## Simple quantiles/ECDF, see ecdf() {library(stats)} for a better one:

plot(x <- sort(rnorm(47)), type = "s", main = "plot(x, type = \"s\")")
points(x, cex = .5, col = "dark red")


# Alt + - for <- shortcut
# Assign the result to an object

result <- sum(1:5)

# Print the result
result

sqrt(result) 

# Remove the object from our environment
rm(result)

# Questions?
# Save your script now
# and return to slide deck :)  

