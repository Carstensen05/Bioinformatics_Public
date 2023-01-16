################################
######## BIOINFORMATICS ########
############ NOTES #############
# ANA PALOMA OROZCO CARSTENSEN #
################################

###############################
####### September 24 2021 ##### 
##### SELECTION STRUCTURES ####
###############################

### Make a program that tells you the season of the year you were born, with your birthday
# Spring       Mar 21 - Jun 20 (Apr, May, Jun) (4, 5, 6)
# Summer       Jun 21 - Sep 20 (Jul, Ago, Sep) (7, 8, 9)
# Autumn       Sep 21 - Dec 20 (Oct, Nov, Dec) (10, 11, 12)
# Winter       Dec 21 - Mar 20 (Jan, Feb, Mar) (1, 2, 3)

# Birth date
day <- 5
month <- 3
birth_day <- 64

# Only by months
if (month == 4 | month == 5 | month == 6) { # If you were born on the 4, 5 or 6 month... 
  print ("Spring") # Print "Spring"
} else if (month == 7 | month == 8 | month == 9) { # If you were born on the 7, 8 or 9 month... 
  print ("Summer") # Print "Summer"
} else if (month == 10 | month == 11 | month == 12) { # If you were born on the 10, 11 or 12 month... 
  print ("Autumn") # Print "Autumn"
} else if (month == 1 | month == 2 | month == 3) { # If you were born on the 1, 2 or 3 month... 
  print ("Winter") # Print "Winter"
}

# By day of the year
if (birth_day >= 81 & birth_day <= 171) { # If you were born between the 81 & 171 days... 
  print ("Spring") # Print "Spring"
} else if (birth_day >=172 & birth_day <= 264) { # If you were born between the 172 & 264 days... 
  print ("Summer") # Print "Summer"
} else if (birth_day >=265 & birth_day <= 355) { # If you were born between the 265 & 355 days... 
  print ("Autumn") # Print "Autumn" 
} else { # If you were born on any other day... 
  print ("Winter") # Print "Winter"
}
# But... How do we know which day of the year we were born?

# By day & month (BEST option)
if (day >= 21 & month == 3 | day >= 1 & month == 4 | day >= 1 & month == 5 | day <= 20 & month == 6) { # If you were born between March 21 & June 20...
  print ( "Spring") # Print "Spring"
} else if (day >= 21 & month == 6 | day >= 1 & month == 7 | day >= 1 & month == 8 | day <= 20 & month == 9) { # If you were born between June 21 & September 20...
  print ("Summer") # Print "Summer"
} else if (day >= 21 & month == 9 | day >= 1 & month == 10 | day >= 1 & month == 11 | day <= 20 & month == 12) { # If you were born between September 21 & December 20...
  print ("Autumn") # Print "Autumn"
} else if (day >= 21 & month == 12 | day >= 1 & month == 1 | day >= 1 & month == 2 | day <= 20 & month == 3) { # If you were born between December 21 & March 20...
  print ("Winter") # Print "Winter"
}

# In case it is for a quiz or something 
Day <- readline (prompt = "Day you were born: ") # Give the function
Day <- as.numeric () # Make it numeric, without the "" 