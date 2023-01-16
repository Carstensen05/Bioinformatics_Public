################################
######## BIOINFORMATICS ########
############ NOTES #############
# ANA PALOMA OROZCO CARSTENSEN #
################################

###############################
######## October 08 2021 ###### 
####### BASIC FUNCTIONS #######
###############################

# Quadratic function: ax^2 + bx + c = 0 
Quadratic_f <- function (a, b, c){ # Create the function with a, b & c as variables
  x_1 <- (-b + sqrt (b^4 - 4 * a * c)) / (2*a) # First solution
  x_2 <- (-b - sqrt (b^4 - 4 * a * c)) / (2*a) # Second solution
  return (print (paste ("The solutions are", x_1, "and", x_2))) # Return the message... 
}

Quadratic_f (1, -1, -1) # Prove the function

# Mean function: sum / length 
Mean_f <- function(x){ # Create the function with x as variable
  return (sum (x) / length( x)) # Solution for mean
}

x <- c (1, 2, 3, 4, 5) # Create a vector named "x"

Mean_f (x) # Prove the function

y <- Mean_f (x) # Assign the mean of "x" to "y"

print (y) # Print; prove the function 

# How to run it all at once 
source ("/Users/michellecarstensen/Desktop/Quinto_semestre/Bioinformatics/Bioinformatics/Notas_clases.R")

# Function that will only process data, with no return 
Histogram <- function (x) { # Create function with x as variable
  hist (x) # Create an histogram
}

x <- rnorm (1000) # Create a vector of random numbers 

Histogram (x) # Prove function 

# ON THE NEW PROJECT!!! 
pdf ("03_Output/Plots/Histograma.pdf", width = 8, height = 13) # Save it as PDF with specific measures 
Histogram (x) # Run the histogram 
dev.off () # Close the output 

# It can also be saves as tiff, jpeg
