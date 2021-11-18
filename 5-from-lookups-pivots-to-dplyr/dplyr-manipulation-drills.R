# Create a new data frame, iris_log, based on the existing iris data frame.
iris_log <- iris


# Create Petal.Length_log and Petal.Width_log 
# which are log-transformation of their respective fields.
iris_log <- mutate(iris_log, Petal.Length_log = log(Petal.Length), Petal.Width_log = log(Petal.Width))

# Filter this data frame to contain only records from the setosa species.
iris_log <- filter(iris_log, Species == "setosa")

# Sub-set this data frame to keep only the 
# Species, Petal.Length_log and Petal.Width_log fields. 
iris_log <- select(iris_log, Species, Petal.Length_log, Petal.Width_log)

iris_log
