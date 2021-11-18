### FROM EXCEL CELLS TO R VECTORS ###

# Two basic ways to assign an object..

# this is preferred
# shortcut Alt + -
a <- 5

# Alernative is = 
a = 5


# NOT...
# This tests for equality
# instead of assigning it.

a == 5


# How to name an object?
# Can't start with a number
# along with some other exceptions
# So it's up to you!

# There are only two hard things in computer science:
# cache invalidation and naming things. -- Phil Karlton

# Generally lowercase_plus_underscores
# More: see Google/Hadley Wickham Style Guides.
# http://adv-r.had.co.nz/Style.html


# 6 basic data types/modes in R

# Integer
# L for long
int_value <- 3L
int_value

# Numeric
num_value <-  22.333
num_value  


# Logical
logical_value <- (2 > 4)
logical_value

# Character 
chr_value <- "Hello World!"
chr_value

# Complex
comp_value <-  2 + 2i
comp_value

# Check what they are...
is.numeric(num_value)

is.character(num_value)

is.logical(logical_value)

is.complex(comp_value)

# How long is it? 
length(logical_value)

# What about multiple "cells"/values
# in a vector?

## C IS FOR COMBINE!

?c

numbers <- c(15, 18, 22, 5)
numbers

numbers ^ 2

names <- c("Billy","Susie","Jack","Jill")
names
nchar(names)


#vectors are one-dimensional collections of values
#OF THE SAME TYPE

# Elements of vectors must all have the same mode.

k <- c(1,2,3,"Boo!")
k

is.character(k)

# Access individual elements of vector: vectorname[index]
# Let's try on our people vector
names

#get the first value from the vector
names[1]


#R will evaluate any math within the brackets...
people[1+2]
people[length(people)]

#print the 1st and 3rd values in different order
people[c(1,3)]
people[c(3,1)]

# Questions? 
