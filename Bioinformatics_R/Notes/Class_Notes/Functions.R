################################
######## BIOINFORMATICS ########
############ NOTES #############
# ANA PALOMA OROZCO CARSTENSEN #
################################

################################
######## October 04 2021 ####### 
########## FUNCTIONS ###########
################################

BiocManager::install("msa") # Install library "msa" 
library (msa) # Load library 

# First, we define the function: 
# f(x) = x^2 + x - 1

my_function <- function (variable){ # The argument it's not necessary "x" 
  f <- variable * variable + variable -1 # Process the argument 
  return (f) # Return the processed variable
}
##  Every time the function is modified, it needs to be run again 

View (my_function) # View the function in a new window 

my_function (-1) # Probe that the function works
x <- 1:10 # Make a vector
my_function (x) # Run the function over the vector

# With more than 1 argument
my_function_2 <- function (x, y){ # The arguments need to be separated by a coma
  pluss <- (x + y) # Process the argument
  return (pluss)  # Return the processed variable
} 

View (my_function_2) # View the function in a new window 

my_function_2 (3, 10) # Probe that the function works

# "Paste" can combine text with variables 
my_function_3 <- function (x, y){ # The arguments need to be separated by a coma
  pluss <- (x + y) # Process the argument
  return (print (paste ("The result is", pluss)))  # Return the processed variable
} 

View (my_function_3) # View the function in a new window 

my_function_3 (3, 10) # Probe that the function works

my_function_4 <- function (x, y){ # The arguments need to be separated by a coma
  pluss <- (x + y) # Process the argument
  return (print (paste ("The result from", x, "plus", y, "is", pluss)))  # Return the processed variable
} 

View (my_function_4) # View the function in a new window 

my_function_4 (3, 10) # Probe that the function works

# In case it is for a quiz or something 
my_function_5 <- function (){ # The arguments need to be separated by a coma
  v_x <- readline (prompt = "Enter the first numer: ") # Give the function
  v_x <- as.numeric (v_x) # Make it numeric, without the "" 
  v_y <- readline (prompt = "Enter the second numer: ") # Give the function
  v_y <- as.numeric (v_y) # Make it numeric, without the "" 
  pluss <- (v_x + v_y) # Process the argument
  return (print (paste ("The result from", v_x, "plus", v_y, "is", pluss)))  # Return the processed variable
} 

View (my_function_5) # View the function in a new window 

my_function_5 () # Probe that the function works

# For addition, subtraction, division, multiplication and exponential
my_function_a <- function (){ # The arguments need to be separated by a coma
  a_x <- readline (prompt = "Enter the first numer: ") # Give the function
  a_x <- as.numeric (a_x) # Make it numeric, without the "" 
  a_y <- readline (prompt = "Enter the second numer: ") # Give the function
  a_y <- as.numeric (a_y) # Make it numeric, without the "" 
  pluss <- (a_x + a_y) # Process the argument
  return (print (paste ("The result from", a_x, "plus", a_y, "is", pluss)))  # Return the processed variable
} 

View (my_function_a) # View the function in a new window 

my_function_a () # Probe that the function works

my_function_s <- function (){ # The arguments need to be separated by a coma
  s_x <- readline (prompt = "Enter the first numer: ") # Give the function
  s_x <- as.numeric (s_x) # Make it numeric, without the "" 
  s_y <- readline (prompt = "Enter the second numer: ") # Give the function
  s_y <- as.numeric (s_y) # Make it numeric, without the "" 
  minus <- (s_x - s_y) # Process the argument
  return (print (paste ("The result from", s_x, "minus", s_y, "is", minus)))  # Return the processed variable
} 

View (my_function_s) # View the function in a new window 

my_function_s () # Probe that the function works

my_function_m <- function (){ # The arguments need to be separated by a coma
  m_x <- readline (prompt = "Enter the first numer: ") # Give the function
  m_x <- as.numeric (m_x) # Make it numeric, without the "" 
  m_y <- readline (prompt = "Enter the second numer: ") # Give the function
  m_y <- as.numeric (m_y) # Make it numeric, without the "" 
  times <- (m_x * m_y) # Process the argument
  return (print (paste ("The result from", m_x, "times", m_y, "is", times)))  # Return the processed variable
} 

View (my_function_m) # View the function in a new window 

my_function_m () # Probe that the function works

my_function_d <- function (){ # The arguments need to be separated by a coma
  d_x <- readline (prompt = "Enter the first numer: ") # Give the function
  d_x <- as.numeric (d_x) # Make it numeric, without the "" 
  d_y <- readline (prompt = "Enter the second numer: ") # Give the function
  d_y <- as.numeric (d_y) # Make it numeric, without the "" 
  out_of <- (d_x / d_y) # Process the argument
  if (d_y > 1){
    return (print (paste ("The result from", d_x, "out of", d_y, "is", out_of)))  # Return the processed variable
  }else if (d_y =0){
    print ("No way")}
}

View (my_function_d) # View the function in a new window 

my_function_d () # Probe that the function works

# All together in one function 

my_function_all <- function (){ # The arguments need to be separated by a coma
  all_x <- readline (prompt = "Enter the first numer: ") # Give the function
  all_x <- as.numeric (all_x) # Make it numeric, without the "" 
  all_y <- readline (prompt = "Enter the second numer: ") # Give the function
  all_y <- as.numeric (all_y) # Make it numeric, without the "" 
  pluss <- (all_x + all_y) # Process the argument
  minus <- (all_x - all_y) # Process the argument
  times <- (all_x * all_y) # Process the argument
  out_of <- (all_x / all_y) # Process the argument
  return (print (paste ("The result from", all_x, "plus", all_y, "is", pluss, ";",
                        "the result from", all_x, "minus", all_y, "is", minus, ";",
                        "the result from", all_x, "times", all_y, "is", times, ";",
                        "the result from", all_x, "out of", all_y, "is", out_of)))
} 

View (my_function_all) # View the function in a new window 

my_function_all () # Probe that the function works