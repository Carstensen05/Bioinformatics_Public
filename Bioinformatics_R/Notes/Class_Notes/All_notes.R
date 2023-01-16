################################
######## BIOINFORMATICS ########
############ NOTES #############
# ANA PALOMA OROZCO CARSTENSEN #
################################


######################
# 10 septiembre 2021 # 
##### BIOSTRINGS #####
######################

# BSgenome 
BiocManager::install("BSgenome")
library (BSgenome)



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


###############################
######## October 04 2021 ###### 
########## FUNCTIONS ##########
###############################

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

# How to link it to an R project


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


###############################
####### October 11 2021 ####### 
############## MSA ############
###############################

install.packages ("msa") # Install packages 
library (msa) # Load library 
library (seqinr) # Load library
library (ape) # Load library

Sec_insulin <- readAAStringSet ("/Users/michellecarstensen/Desktop/Insulinas.fasta") # Load sequences
print (Sec_insulin) # Print

Sec_globins <- readAAStringSet ("/Users/michellecarstensen/Desktop/globinas.fasta") # Load sequences
print (Sec_globins) # Print

names (Sec_insulin) # See names
names (Sec_globins) # See names 

class (Sec_insulin) # Check class of the objects
class (Sec_globins) # Check class of the objects 

# Alignments for insulin
Alig_Ins_Clustal_W <- msa (Sec_insulin, method = "ClustalW") # Make alignment with Clustal W
Alig_Ins_Clustal_O <- msa (Sec_insulin, method = "ClustalOmega") # Make alignment with Clustal Omega
Alig_Ins_Muscle <- msa (Sec_insulin, method = "Muscle") # Make alignment with Muscle

print (Alig_Ins_Clustal_W) # Print
print (Alig_Ins_Clustal_O) # Print
print (Alig_Ins_Muscle) # Print

# Alignments for globins
Alig_Glob_Clustal_W <- msa (Sec_globins, method = "ClustalW") # Make alignment with Clustal W
Alig_Glob_Clustal_O <- msa (Sec_globins, method = "ClustalOmega") # Make alignment with Clustal Omega
Alig_Glob_Muscle <- msa (Sec_globins, method = "Muscle") # Make alignment with Muscle

print (Alig_Glob_Clustal_W) # Print
print (Alig_Glob_Clustal_O) # Print
print (Alig_Glob_Muscle) # Print

T_Ins_Clustal_W <- msaConvert (Alig_Ins_Clustal_W, type = "seqinr::alignment") # Convert the data
T_Ins_Clustal_O <- msaConvert (Alig_Ins_Clustal_O, type = "seqinr::alignment") # Convert the data
T_Ins_Muscle <- msaConvert (Alig_Ins_Muscle, type = "seqinr::alignment") # Convert the data
T_Glob_Clustal_W <- msaConvert (Alig_Glob_Clustal_W, type = "seqinr::alignment") # Convert the data
T_Glob_Clustal_O <- msaConvert (Alig_Glob_Clustal_O, type = "seqinr::alignment") # Convert the data
T_Glob_Muscle <- msaConvert (Alig_Glob_Muscle, type = "seqinr::alignment") # Convert the data

dist_Ins_Clustal_W <- dist.alignment (T_Ins_Clustal_W, "identity") # Create the alignment matrix
as.matrix (dist_Ins_Clustal_W) # Make it matrix
View (dist_Ins_Clustal_W) # View 

dist_Ins_Clustal_O <- dist.alignment (T_Ins_Clustal_O, "identity") # Create the alignment matrix
as.matrix (dist_Ins_Clustal_O) # Make it matrix
View (dist_Ins_Clustal_O) # View 

dist_Ins_Muscle <- dist.alignment (T_Ins_Muscle, "identity") # Create the alignment matrix
as.matrix (dist_Ins_Muscle) # Make it matrix
View (dist_Ins_Muscle) # View 

dist_Glob_Clustal_W <- dist.alignment (T_Glob_Clustal_W, "identity") # Create the alignment matrix
as.matrix (dist_Glob_Clustal_W) # Make it matrix
View (dist_Glob_Clustal_W) # View 

dist_Glob_Clustal_O <- dist.alignment (T_Glob_Clustal_O, "identity") # Create the alignment matrix
as.matrix (dist_Glob_Clustal_O) # Make it matrix
View (dist_Glob_Clustal_O) # View 

dist_Glob_Muscle <- dist.alignment (T_Glob_Muscle, "identity") # Create the alignment matrix
as.matrix (dist_Glob_Muscle) # Make it matrix
View (dist_Glob_Muscle) # View 

# Phylogetetic trees 
Tree_Ins_CW <- nj (dist_Ins_Clustal_W) # Make the tree with neighbor joining 
plot (Tree_Ins_CW, main = "Phylogenetic tree of insulin sequences using ClustalW") # Make the tree, the graph 

Tree_Ins_CO <- nj (dist_Ins_Clustal_O) # Make the tree with neighbor joining 
plot (Tree_Ins_CO, main = "Phylogenetic tree of insulin sequences using ClustalO") # Make the tree, the graph 

Tree_Ins_M <- nj (dist_Ins_Muscle) # Make the tree with neighbor joining 
plot (Tree_Ins_M, main = "Phylogenetic tree of insulin sequences using Muscle") # Make the tree, the graph 

Tree_Glob_CW <- nj (dist_Glob_Clustal_W) # Make the tree with neighbor joining 
plot (Tree_Glob_CW, main = "Phylogenetic tree of globins sequences using ClustalW") # Make the tree, the graph 

Tree_Glob_CO <- nj (dist_Glob_Clustal_O) # Make the tree with neighbor joining 
plot (Tree_Glob_CO, main = "Phylogenetic tree of globins sequences using ClustalO") # Make the tree, the graph 

Tree_Glob_M <- nj (dist_Glob_Muscle) # Make the tree with neighbor joining 
plot (Tree_Glob_M, main = "Phylogenetic tree of globins sequences using Muscle") # Make the tree, the graph 


###############################
####### October 26 2021 ####### 
########## EXAMPLES ###########
###############################

# Write a program that calculate the addition of the first 100 numbers cubed

cube <- 0 # Assign the object
i <- 1 # Start on the first number: 1 

for (i in 1:100) { # Assign value to i 
  cube <- cube + i^3 # Addition of the results
  print (cube) # Print
}

while (i < 100) { # Between the first numbers
  i <- i + 1 # Assign the value of i 
  cube <- cube + i^3 # Addition of the results 
  print (cube) # Print
}


# Make a program that, as entrance, has 3 numbers and determine which one is higher
# The program needs to ask the 3 numbers until the user decides don't want to continue  

function_add <- function (){ # The arguments need to be separated by a coma
  f_n <- readline (prompt = "Enter the first numer: ") # Give the function
  f_n_n <- as.numeric (f_n) # Make it numeric, without the "" 
  s_n <- readline (prompt = "Enter the second numer: ") # Give the function
  s_n_n <- as.numeric (s_n) # Make it numeric, without the "" 
  t_n <- readline (prompt = "Enter the third numer: ") # Give the function
  t_n_n <- as.numeric (t_n) # Make it numeric, without the "" 
  vec <- c (f_n_n, s_n_n, t_n_n) # Concatenate on a vector
  higher <- max (vec) # Which one is higher
  return (print (paste ("The higher numer is", higher)))  # Return the processed variable
  again <- readline (prompt = "If you want to continue, press 1, if not, 0") # Ask if continue 
  again_n <- as.numeric (again) # Make it numeric, without the "" 
  } 

View (function_add) # View the function in a new window 

function_add () # Probe that the function works


################################
######## October 29 2021 ####### 
############ GGTREE ############
################################

library (ggtree) # Load library 
library (phytools) # Load library 
library (EBImage) # Load library 
library (ggimage) # Load library 
library (treeio) # Load library 
library (ggplot2) # Load library 
library (ggplotify) # Load library 


## Without the information available
set.seed (2021) # Create a vector of random numbers that can be reproduced 
Tree_Ex <- rtree (4) # Create a random tree with 4 tips 
print (Tree_Ex) # Print
Plot_Tree_Ex <- plot (Tree_Ex) # Plot tree
print (Plot_Tree_Ex) # Print

Tree_Ex_2 <- system.file ("extdata", "sample.nwk", package = "treeio") # Get the data sets from the package
Tree_nwk <- read.tree (Tree_Ex_2) # Read it as tree
Plot_Tree_nwk <- ggplot (Tree_nwk, aes (x, y)) + geom_tree () + theme_tree() # Plot the tree
print (Plot_Tree_nwk) # Print

# Examples of different ways of plotting a tree
ggtree (Tree_nwk, color = "blue", size = 2, linetype = "dotted") # Create a tree with line color blue and with the line types "dotted" 
ggtree (Tree_nwk, ladderize = FALSE) # Create a tree without a ladderize effect
ggtree (Tree_nwk, branch.length = "none") # Create a tree without having the branch lengths 

# Layouts
set.seed (Sys.Date()) # Set a seed with the date
Lay_tree <- rtree (10) # Create a random tree with 50 branches
ggtree (Lay_tree) # Plot the tree 
dev.off() # In case of error, run this

ggtree (Lay_tree, layout = "slanted") # Plot the tree with the layout "slanted"
ggtree (Lay_tree, layout = "circular") # Plot the tree with the layout "circular"
ggtree (Lay_tree, layout = "fan", open.angle = 120) # Plot the tree with the layout "fan"
ggtree (Lay_tree, layout = "equal_angle") # Plot the tree with the layout "equal_angle"
ggtree (Lay_tree, layout = "daylight") # Plot the tree with the layout "daylight"

ggtree (Lay_tree, branch.length = "none") # Plot the tree without branch lenght 
ggtree (Lay_tree, layout = "slanted", branch.length = "none") # Plot the tree with the layout "slanted", without branch lenght
ggtree (Lay_tree, layout = "circular", branch.length = "none") # Plot the tree with the layout "circular", without branch lenght
ggtree (Lay_tree, layout = "fan", open.angle = 120, branch.length = "none") # Plot the tree with the layout "fan", without branch lenght
ggtree (Lay_tree, layout = "equal.angle", branch.length = "none") # Plot the tree with the layout "equal angle", without branch lenght
ggtree (Lay_tree, layout = "daylight", branch.length = "none") # Plot the tree with the layout "daylight", without branch lenght

ggtree (Lay_tree) + layout_dendrogram () # Plot the tree as dendrogram
ggtree (Lay_tree, layout = "slanted", branch.length = "none") + layout_dendrogram () # Plot the tree with the layout "slanted", without branch lenght; as dendrogram
ggtree (Lay_tree, layout = "circular", branch.length = "none") + layout_dendrogram () # Plot the tree with the layout "circular", without branch lenght; as dendrogram
ggtree (Lay_tree, layout = "fan", open.angle = 120, branch.length = "none") + layout_dendrogram () # Plot the tree with the layout "fan", without branch lenght; as dendrogram
ggtree (Lay_tree, layout = "equal.angle", branch.length = "none") + layout_dendrogram () # Plot the tree with the layout "equal angle", without branch lenght; as dendrogram
ggtree (Lay_tree, layout = "daylight", branch.length = "none") + layout_dendrogram () # Plot the tree with the layout "daylight", without branch lenght; as dendrogram

Beast_file_tree <- system.file ("examples/MCC_FluA_H3.tree", # Load the data base... 
                                package = "ggtree") # From the package ggtree
Beast_tree <- read.beast (Beast_file_tree) # Read it as tree
ggtree (beast_tree, mrsd = "2021-03-05") + theme_tree2() # Plot the tree 



## With the information available 
Example_tree <- read.nexus ("https://raw.githubusercontent.com/rgriff23/Dissertation/master/Chapter_2/data/tree.nex") # Read a tree, taken from a website 
print (Example_tree) # See information 

Gg_Ex_tree <- ggtree (Example_tree) # Make the information a tree
Plot_tree <- plot (Gg_Ex_tree) # Plot the tree
print (Plot_tree) # Print

# Different layouts = "rectangular"; "slanted"; "circular"; "radial"; "unrooted" 

Gg_Ex_tree_2 <- ggtree (Example_tree, layout = "rectangular") + ggtitle("Rectangular") # Make the information a tree, with the layout "rectangular"
Plot_tree_2 <- plot (Gg_Ex_tree_2) # Plot the tree
print (Plot_tree_2) # Print

Gg_Ex_tree_3 <- ggtree (Example_tree, layout = "slanted") + ggtitle("Slanted") # Make the information a tree, with the layout "slanted"
Plot_tree_3 <- plot (Gg_Ex_tree_3) # Plot the tree
print (Plot_tree_3) # Print

Gg_Ex_tree_4 <- ggtree (Example_tree, layout = "circular") + ggtitle("Circular") # Make the information a tree, with the layout "circular"
Plot_tree_4 <- plot (Gg_Ex_tree_4) # Plot the tree
print (Plot_tree_4) # Print

Gg_Ex_tree_5 <- ggtree (Example_tree, layout = "radial") + ggtitle("Radial") # Make the information a tree, with the layout "radial"
Plot_tree_5 <- plot (Gg_Ex_tree_5) # Plot the tree
print (Plot_tree_5) # Print

Gg_Ex_tree_6 <- ggtree (Example_tree, layout = "unrooted") + ggtitle("Unrooted") # Make the information a tree, with the layout "unrooted"
Plot_tree_6 <- plot (Gg_Ex_tree_6) # Plot the tree
print (Plot_tree_6) # Print

# All together in one plot
All_together <- multiplot (Gg_Ex_tree, Gg_Ex_tree_2, Gg_Ex_tree_3, Gg_Ex_tree_4, Gg_Ex_tree_5, Gg_Ex_tree_6, ncol = 3) # Plot all together, by 3
print (All_together) # Print

# Personalized or customized 
Custom_Ex_tree <- ggtree (Example_tree, aes (color = branch.length)) + # Make the information a tree, colored by the branch lengths
  xlim (0, 90) + geom_tiplab (size = 2, color = "blue") +  # Determine the limits and add the tip label layer, with blue color
  geom_label2 (aes (subset = !isTip, label = node), size = 2, color = "white", alpha = 0.5) + # Support the aesthetic: labels of nodes, color white and transparency of 0.5
  theme_tree2 ("black") + theme (legend.position = "bottom") # Use the tree2 theme (background) = black, and place the legend on the bottom
Plot_Custom_tree <- plot (Custom_Ex_tree) # Plot the tree
print (Plot_Custom_tree) # Print

# Highlight clades 
Highlight_Ex_tree <- ggtree (Example_tree) + # Make the information a tree
  xlim (0, 125) + geom_tiplab (size = 2, offset = 0.5) + # Determine the limits and add the tip label layer
  geom_hilight (node = 124, fill = "steelblue", alpha = 0.5) + # Highlight the node 124 with color "steelblue", with transparency of 0.5
  geom_hilight (node = 113, fill = "white", alpha = 0.5) + # Highlight the node 113 with color "white", with transparency of 0.5
  geom_hilight (node = 110, fill = "darkblue", alpha = 0.5) + # Highlight the node 110 with color "darkblue", with transparency of 0.5
  geom_hilight (node = 96, fill = "gray", alpha = 0.5) + # Highlight the node 96 with color "gray", with transparency of 0.5
  geom_hilight (node = 89, fill = "lightblue", alpha = 0.5) + # Highlight the node 89 with color "lightblue", with transparency of 0.5
  geom_hilight (node = 70, fill = "beige", alpha = 0.5) # Highlight the node 70 with color "beige", with transparency of 0.5
Plot_Highlight_tree <- plot (Highlight_Ex_tree) # Plot the tree
print (Plot_Highlight_tree) # Print

# Add label clades  
Labels_Ex_tree <- Highlight_Ex_tree + # Use the past tree (with highlights) 
  geom_cladelabel (124, "Galagoidea", offset = 25, barsize = 2, angle = 90, offset.text = 1.5, hjust = 0.5, fontsize = 3) + # Add the label "Galagoidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 1.5, horizontal justification of 0.5 and size of the text = 3
  geom_cladelabel (113, "Lemuroidea", offset = 25, barsize = 2, angle = 90, offset.text = 1.5, hjust = 0.5, fontsize = 3) + # Add the label "Lemuroidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 1.5, horizontal justification of 0.5 and size of the text = 3
  geom_cladelabel (110, "Tarsioidea", offset = 25, barsize = 2, angle = 90, offset.text = 2.5, hjust = 0.2, fontsize = 2) + # Add the label "Tarsioidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 2.5, horizontal justification of 0.2 and size of the text = 2
  geom_cladelabel (96, "Ceboidea", offset = 25, barsize = 2, angle = 90, offset.text = 1.5, hjust = 0.5, fontsize = 3) + # Add the label "Ceboidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 1.5, horizontal justification of 0.5 and size of the text = 3
  geom_cladelabel (89, "Hominoidea", offset = 25, barsize = 2, angle = 90, offset.text = 1.5, hjust = 0.5, fontsize = 3) + # Add the label "Homionidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 1.5, horizontal justification of 0.5 and size of the text = 3
  geom_cladelabel (70, "Cercopithecoidea", offset = 25, barsize = 2, angle = 90, offset.text = 1.5, hjust = 0.5, fontsize = 3) # Add the label "Cercopithecoidea", separated of the bar by 25, with size of 2, angle of 90, text separated of the bar by 1.5, horizontal justification of 0.5 and size of the text = 3
Plot_Label_tree <- plot (Labels_Ex_tree) # Plot the tree
print (Plot_Label_tree) # Print

# Simulate 5 continuous traits by the Brownian Motion (BM) model 
set.seed (23) # Create a vector of random numbers that can be reproduced 
Traits <- data.frame (fastBM (Example_tree, nsim = 5)) # Create a data.frame of fast quantitative traits by the BM model, using the information of the tree; run 5 simulations

Traits_Ex_tree <- ggtree (Example_tree) + # Make the information a tree
  xlim (0, 125) + # Set the limits
  geom_tiplab (size = 2, offset = 20) # Add the tip label layer 

Heat_Map_Ex_tree <- gheatmap (Traits_Ex_tree, Traits, offset = 0.2, width = 0.2, # Add the heat map, using the past tree and the data.frame created, separated of the bar by 0.2, and a width of 0.2 
                              low = "blue", high = "lightpink", colnames_position = "top", font.size = 2) # The low color is blue and the top, pink; place the labels of the traits on top, with a text size of 2
Plot_Heat_tree <- plot (Heat_Map_Ex_tree) # Plot the tree
print (Plot_Heat_tree) # Print

# Make the traits binary (presence - absence)
Traits_binary <- data.frame (matrix (ifelse (stack (Traits) $ values > # Create a matrix; if the values of the vectors of the traits are higher... 
                                               mean (stack (Traits) $ values), "Present", "Absent"), 65, 5)) # than the mean of the traits; get "present"; if not, "absent"; with the size of 65 x 5
row.names (Traits_binary) <- row.names (Traits) # Use the same row names

Heat_Tr_Bin_tree <- gheatmap (Traits_Ex_tree, Traits_binary, offset = 0.2, width = 0.2, # Add the heat map, using the past tree and the data.frame created, separated of the bar by 0.2, and a width of 0.2 
                              low = "lightblue", high = "darkblue", colnames_position = "top", font.size = 2) + # The low color is light blue and the top, dark blue; place the labels of the traits on top, with a text size of 2
  scale_fill_manual (values = c ("lightblue", "darkblue")) # Specify the values: light blue and dark blue
Plot_Heat_Tr_Bin_tree <- plot (Heat_Tr_Bin_tree) # Plot the tree
print (Plot_Heat_Tr_Bin_tree) # Print

# Select a sub-tree
Sub_tree <- extract.clade (Example_tree, 77) # Select the 77 clade and extract it 
Means_tree <- fastBM (Sub_tree, nsim = 1) # Create fast quantitative traits by the BM model and replace the matches, run 1 simulation
Distance_tree <- lapply (Means_tree, rnorm, n = 100) # Create 100 new vectors with the same size of the means
Function_plot <- lapply (Distance_tree, function (y) { # Use the past vectors and use the function... 
  ggplot (data.frame (y = y), aes (y)) + # Plot a data.frame in which y = y, aesthetic = y
    geom_histogram (binwidth =  0.3) + # Plot an histogram with a bin width of 0.3
    xlim (range (unlist (Distance_tree))) + # Place limits 
    theme_inset () # Select inset theme 
})

names (Function_plot) <- 1:length (Means_tree) # Make the names the node numbers 

Plot_Sub_tree <- ggtree (Sub_tree) + # Make the information a tree
  xlim (0, 25) + # Mark the limits 
  geom_tiplab (offset = 2.5, size = 4) # Add the tip label layer, 2.5 separated from the band and size = 4
inset (Plot_Sub_tree, Function_plot, width = 0.2, height = 0.15, hjust = -1) # Add the plot function to the sub-tree 

set.seed (23) # Create a vector of random numbers that can be reproduced 
Traits <- fastBM (Example_tree) # Create fast quantitative traits by the BM model

Continuous_ASRs <- anc.Bayes (Example_tree, Traits) # Estimate continuous ASRs with Bayesian Brownian motion model 
dim (Continuous_ASRs) # Check the dimensions of the object

# Basic tree plot 
Basic_tree <- ggtree (Example_tree) + xlim (0, 100) + geom_tiplab (offset = 2.5, size = 2) # Make a tree from the information, mark the limits and the tip label layer 
Basic_HM_tree <- gheatmap (Basic_tree, data.frame (Traits), width = 0.02, # Make the heat map on the past tree, with the data.frame of the traits 
                           low = "blue", high = "lightgreen", colnames = FALSE) # The low color is blue and the high, light green
Nodes <- c ("70", "89", "96", "110", "113", "124") # Make a vector with the nodes 
Posterior_distribution <- Continuous_ASRs $ mcmc [ , Nodes] # Add the continuous ASR posterior distributions for selected nodes 
Plot_Posterior_distribution <- apply (Posterior_distribution, 2, function (y) {
  ggplot (data.frame (y = y), aes (y, fill = "blue" )) + # Plot a data.frame in which y = y, aesthetic = y
    geom_histogram (binwidth =  0.5, alpha = 0.75) + # Plot an histogram with a bin width of 0.5 and transparency of 0.75
    xlim (range (unlist (Distance_tree))) + # Place limits 
    scale_fill_gradient (low = "blue", high = "green") # The low color is light blue and the top, green
  theme_inset () # Select inset theme 
})
inset (Basic_HM_tree, Plot_Posterior_distribution, width = 0.15, height = 0.15, vjust = -1) # Add to the tree: the heat map, to the past tree






