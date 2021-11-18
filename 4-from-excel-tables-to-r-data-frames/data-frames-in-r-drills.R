mtcars

# How many rows and columns are there?
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

# Assign the first dozen rows to mtcars_head.
mtcars_head <- head(mtcars, 12)
mtcars_head

# Using the log() function, create a column hp_log 
# which is a log-transformation of the column hp.
mtcars$hp_log <- log(mtcars$hp)
head(mtcars$hp_log)

# Rename the column mpg as miles_per_gallon
colnames(mtcars)
colnames(mtcars)[1]

colnames(mtcars)[1] <- "miles_per_gallon"
colnames(mtcars)

