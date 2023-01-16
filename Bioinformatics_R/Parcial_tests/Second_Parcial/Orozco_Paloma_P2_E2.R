################################
######## BIOINFORMATICS ########
########## PARCIAL 2 ###########
# ANA PALOMA OROZCO CARSTENSEN #
################################


# Elabora un programa en R debidamente comentado que a partir de dos secuencias de nucleótidos de tamaño 5. Regrese las diferencias en nucleótóidos alineados . 
# (No debes usar librerías especializadas en R, excepto Biostrings para este ejercicio.)
# Por ejemplo con
# seq1=AACTG
# seq2=AACTT
# debería arrojar 1 ya que esas dos secuencias sólo difieren en la última letra.

library(Biostrings) # Cargar librería
seq_1 <- DNAString ("CGTCA") # Crear la primera secuencia 
seq_2 <- DNAString ("TCTAT") # Crear la segunda secuencia 

print (seq_1) # Imprimir
print (seq_2) # Imprimir

Coincidencias <- compareStrings (seq_1, seq_2) # Comparar ambas secuencias
print (Coincidencias) # Imprimir
countPattern ("?", Coincidencias) # Contar las veces que aparece "?"









