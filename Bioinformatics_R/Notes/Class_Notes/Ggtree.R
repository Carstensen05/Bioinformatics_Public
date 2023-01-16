################################
######## BIOINFORMATICS ########
############ NOTES #############
# ANA PALOMA OROZCO CARSTENSEN #
################################

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
set.seed (200) # Create a vector of random numbers that can be reproduced 
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
Lay_tree <- rtree (7) # Create a random tree with 50 branches
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

# With a loop for 
All_layouts <- c ("slanted", "circular", "fan", "equal_angle", "daylight", "unrooted", "rectangular", "roundrect", "ellipse")

for (i in 1:length (All_layouts)) { # For i in 1:length of the different layouts 
  Trees_multilayouts <- ggtree (Lay_tree, layout = All_layouts [i]) + ggtitle ("Layout", All_layouts[i]) # Make a tree, using the previous tree, with all layouts; add the title
  print (multiplot (Trees_multilayouts, ncol = 1)) # Print the multiplot 
}

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




