##################################
######### BASIC FUNCTIONS ########
## ANA PALOMA OROZCO CARSTENSEN ## 
######## OCTOBER 15, 2021 ######## 
##################################

## CREATE A VECTOR WITH DIFFERENT VALUES AND GENERATE A COMPLETE PHRASE
# Database = Excuses

Excuses [sample (1:20, 1) , 1] # Select a random value con the first column 
Excuses [sample (1:20, 1) , 2] # Select a random value con the second column 
Excuses [sample (1:20, 1) , 3] # Select a random value con the third column 

# Now concatenate them: 

Excuse <- function (Excuses) { # Name the function and give it the value
  a <- Excuses [sample (1:20, 1) , 1] # Select a random value on the first column
  b <- Excuses [sample (1:20, 1) , 2] # Select a random value on the second column
  c <- Excuses [sample (1:20, 1) , 3] # Select a random value on the third column
  return (print (paste (a, b, c))) # Return all the answers together
}

Excuse (Excuses) # Probe the function 
# Now we have 8,000 different excuses... 


# Repeat, but without repeating them:
Excuse_wr <- function (Excuses) { # Name the function and give it the value
  a <- Excuses [sample (1:20) , 1] # Select a random value on the first column
  b <- Excuses [sample (1:20) , 2] # Select a random value on the second column
  c <- Excuses [sample (1:20) , 3] # Select a random value on the third column
  for (i in 1:20) { # i will be between 1 and 20
    print (paste (a [i], b [i], c [i])) # Select and print them
  }
}

Excuse_wr (Excuses) # Probe the function 

# Another way 
Excuse_wr_2 <- function (Excuses) { # Name the function and give it the value
  a <- Excuses [sample (1:20) , 1] # Select a random value on the first column
  b <- Excuses [sample (1:20) , 2] # Select a random value on the second column
  c <- Excuses [sample (1:20) , 3] # Select a random value on the third column
  return (print (paste (a, b, c))) # Return all the answers together
}

Excuse_wr_2 (Excuses) # Probe the function 


















