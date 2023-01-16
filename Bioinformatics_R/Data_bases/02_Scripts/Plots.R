##################################
############## PLOTS #############
## ANA PALOMA OROZCO CARSTENSEN ## 
######## OCTOBER 15, 2021 ######## 
##################################

## CREATE AN HISTOGRAM WITH THE LENGTH OF THE PROTEINS
# Database = E. coli

pdf ("03_Plots/Histogram.pdf", width = 0.5, height = 05) # Create the PDF
hist (E_coli$Length) # Create the histogram

dev.off () # Log out


jpeg ("03_Plots/Histogram.jpeg") # Create the .jpeg
hist (E_coli$Length) # Create the histogram

dev.off () # Log out 


pdf ("03_Plots/Histogram_ggplot.pdf", width = 0.5, height = 05) # Create the PDF
histogram <- ggplot (E_coli, aes (x = Length)) + # Create the histogram with ggplot
  geom_histogram (color = "blue", fill = "light_blue") # Add specifications 

dev.off () # Log out 


jpeg ("03_Plots/Histogram_ggplot.jpeg") # Create the .jpeg
histogram <- ggplot (E_coli, aes (x = Length)) + # Create the histogram with ggplot
  geom_histogram (color = "blue", fill = "light_blue") # Add specifications 

dev.off () # Log out 




