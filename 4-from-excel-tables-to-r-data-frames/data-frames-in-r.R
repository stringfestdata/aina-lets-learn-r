# What can the docs tell us
# about data frames?

?data.frame

# Create a base data frame

roster <- data.frame(
  name = c("Jack", "Jill", "Billy", "Susie"),
  grade = c(90, 85, 62, 97))


# Print and get to know it
roster

# Structure
str(roster)

# Dimensions
dim(roster)

# Number of rows and columns
nrow(roster)
ncol(roster)


# Check out R's built-in datasets
data()

# Let's use iris!
str(iris)
dim(iris)


iris

# Getting to bigger data sets --
# glimpse beginning of data frame instead

head(iris)

# Want to see more?
head(iris, 10)

# Spreadsheet-like viewing environment:
# View()

View(iris)

# Summary statistics
summary(iris)

# I like psych's describe
# for summary statistics

#install.packages("psych")

library(psych)
describe(iris)



# Index a data frame: df[row, column]
# Like Excel INDEX()!

iris[1,1]

iris[2,2]

iris[1:3,1:3]

# Pull non contiguous regions with vectors!
iris[c(5,10,15), c(1,3)]

# Leave arguments blank to get entire rows and columns

# All columns in rows 1:2
iris[1:2,]

# All rows in columns 1:2
iris[ ,1:2]

# Rather than index columns, use $ sign
iris[, 2]

iris$Sepal.Width

# Each column is a vector
is.vector(iris$Sepal.Length)

# Create calculated columns
iris$SepalRatio <- iris$Sepal.Length/iris$Sepal.Width


iris$SepalRatioRoot <- sqrt(iris$SepalRatio)


# Column names are separate from the data
colnames(iris)

is.vector(colnames(iris))

colnames(iris)[c(1,3)]

# Can even re-assign them
colnames(iris) <- c("Sepal.Length","Sepal.Width","Petal.Length",
                     "Petal.Width", "Species", "Sepal.Ratio", "Sepal.Ratio.Root")

colnames(iris)
