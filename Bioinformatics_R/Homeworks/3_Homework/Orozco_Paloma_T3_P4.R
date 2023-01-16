##################################
############ TAREA 3 #############
############ PARTE 4 #############
######### 08 - 10 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

# Modelo de Markov 
# A partir del genoma completo de la cepa de E Coli K-12, elabora un modelo de Markov para los modelos siguientes. Después, a partir de cada uno de ellos,
# calcula de forma explícita las siguientes probabilidades P(AAAA), P(ACGT), P(AAT T) y compáralos con su cálculo directo.
# Un modelo de primer orden, es decir calcula la matriz de transición de un nucleótido al otro, por ejemplo: P(A|G). La matriz en este caso es de 4 × 4.
# Un modelo de segundo orden, es decir, por ejemplo P(AG|T). En este caso la matriz es de 16 × 4.
# Un modelo de tercer orden, es decir, por ejemplo, de P(AGT|C). En este caso la matriz es de 64 × 4.

install.packages ('markovchain') # Instalar paquete
library (markovchain) # Cargar librería 

e_coli <- readDNAStringSet ("/Users/michellecarstensen/Desktop/E_coli.fna") # Cargar archivo
print (e_coli) # Imprimir

Frecuencia <- alphabetFrequency (e_coli) # Revisar la frecuencia y que no haya nucleótidos ambiguos
print (Frecuencia) # Imprimir

Caracteres <- as.character (e_coli) # Cambiar valores a caracteres
print (Caracteres) # Imprimir

Sep_caracteres <- strsplit (Caracteres, "")[[1]] # Separar caracteres
Markov <- markovchainFit(Sep_caracteres)$estimate # Realizar matrix de probabilidad
print (Markov) # Imprimir

# P (AAAA)
P_1 <- Markov [1, 1] * Markov [1, 1] * Markov [1, 1] # Realizar P (A\A) * P (A\A) * P (A\A)
print (P_1) # Imprimir

# P (ACGT)
P_2 <- Markov [4, 3] * Markov [3, 2] * Markov [2, 1] # Realizar P (C\A) * P (G\C) * P (T\G)
print (P_2) # Imprimir

# P (AATT)
P_3 <- Markov [1, 1] * Markov [4, 1] * Markov [4, 4] # Realizar P (A\A) * P (A\T) * P (T\T)
print (P_3) # Imprimir

# Matriz 4x4

M_1 <- markovchainFit (Sep_caracteres) $ estimate # Realizar la transición 4x4
print (M_1) # Imprimir




