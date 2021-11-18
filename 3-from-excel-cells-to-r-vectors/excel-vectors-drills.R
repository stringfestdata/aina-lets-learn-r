# Create a vector names containing the names of five coworkers.
# Access the 1st and 4th values of this vector.

coworkers <- c("Cher", "Prince", "Bono", "Shakira", "Enya")
coworkers

coworkers[c(1, 4)]

coworkers[c(0+1, 2^2)]

# Create two vectors x and y of length 4; 
#  one containing numeric and the other logical values. 
# Multiply them and pass the result to z. What is the result? 
  
x  <- 1:4
y  <-  c(TRUE, FALSE, TRUE, FALSE)

z  <-  x * y
z
