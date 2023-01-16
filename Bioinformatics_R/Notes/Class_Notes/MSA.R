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


### Check the results, creating trees on other platforms: 
## https://www.ebi.ac.uk/Tools/msa/clustalo/ 












