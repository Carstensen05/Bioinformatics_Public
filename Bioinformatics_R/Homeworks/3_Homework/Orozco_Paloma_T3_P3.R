##################################
############ TAREA 3 #############
############ PARTE 3 #############
######### 08 - 10 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

# Alineamiento 
# A partir de un archivo concatenado del genoma completo 10 virus elabora un programa en R que realice los siguiente:
# 1. Calcula el tamaño de cada secuencia, es decir, el número de nucleótidos.
# 2. Cambiar el nombre de las secuencias por uno más corto, por ejemplo, que incluya sólo el nombre común.
# 3. Generar un nuevo objeto para cada una de la siguientes operaciones
# 3.1 (a) El complemento
# 3.2 (b) El reverso complemento
# 3.3 (c) El reverso
# 3.4 (d) La secuencia traducida
# 4. Realiza un alineamiento por pares de las secuencias de aminoácidos entre las dos secuencias más pequeñas y las dos más grandes.
# 5. Encuentra los codones de inicio y de paro.
# 6. Selecciona todas aquellas secuencias de nucleótidos que superen la media de sus longitudes y que mande a pantalla el nombre de c/u de ellas.

library(Biostrings) # Cargar librería
library(stats4) # Cargar librería
library(parallel) # Cargar librería

genomas <- readDNAStringSet ("/Users/michellecarstensen/Desktop/genomas.fna") # Cargar el archivo de los genomas
print (genomas) # Imprimir

# 1. 
frecuencia <- alphabetFrequency (genomas) # Calcular la frecuencia con la que aparecen las letras el abecedario, cada nucleótido
print (frecuencia) # Imprimir
# Aparecen las letras M, Y y K

genomas_1 <- chartr ("M", "G", genomas) # Cambiar M por G
genomas_2 <- chartr ("Y", "A", genomas_1) # Cambiar la Y por A
genomas_3 <- chartr ("K", "T", genomas_2) # Cambiar la K por T

frecuencia_1 <- alphabetFrequency (genomas_3) # Calcular la frecuencia de nuevo
print (frecuencia_1) #Imprimir

width (genomas_3) # Calcular el tamaño de cada secuencia

# 2. 
names (genomas_3) # Ver el nombre de cada genoma
names (genomas_3) <- c ("Encephalomyocarditis", "Human_enterovirus", "Acidianus", "Basella", "Vibrio_CHOED", "Jutiapa", "Teviot", "Lodeiro", "Flavobacterium", "Husawirus") # Cambiar el nombre por uno más corto
names (genomas_3) # Revisar que esté bien

# 3
# 3.1
Complemento <- complement (genomas_3) # Obtener la secuencia complemento 
print (Complemento) # Imprimir

# 3.2
Reverso_complemento <- reverseComplement (genomas_3) # Obtener la secuencia reversa del complemento
print (Reverso_complemento) # Imprimir

# 3.3 
Reverso <- reverse (genomas_3) # Obtener la secuencia reversa
print (Reverso) # Imprimir

# 3.4 
Traducción <- translate (genomas_3) # Obtener la traducción
print (Traducción) # Imprimir
# La última o las últimas 2 bases de algunas secuencias se omitieron, por no ser tripletes

# 4. 
width (Traducción) # Obtener el tamaño de las secuencias
# Las dos secuencias más grandes son: 5 (22,105) y 9 (15,525)
# Las dos secuencias más pequeñas son: 1 (2,611) y 2 (2,471)

Grandes <- pairwiseAlignment (Traducción [5], Traducción [9]) # Alinear las secuencias 5 y 9 de la traducción
print (Grandes) # Imprimir
# Score de alineamiento: -89,690.06 

Pequeñas <- pairwiseAlignment (Traducción [1], Traducción [2]) # Alinear las secuencias 1 y 2 de la traducción
print (Pequeñas) # Imprimir
# Score de alineamiento: -11,994.54 

# 5. 
ATG <- DNAString ("ATG") # Definir codón de inicio
TGA <- DNAString ("TGA") # Definir codón de paro
TAG <- DNAString ("TAG") # Definir codón de paro
TAA <- DNAString ("TAA") # Definir codón de paro

vmatchPattern (ATG, genomas_3) # Coincidencias con ATG 
vmatchPattern (TGA, genomas_3) # Coincidencias con TGA 
vmatchPattern (TAG, genomas_3) # Coincidencias con TAG 
vmatchPattern (TAA, genomas_3) # Coincidencias con TAA 

# 6. 
Promedio_secuencias <- mean ((width (genomas_3))) # Obtener el promedio de todas las secuencias

if (which (width (genomas_3) > Promedio_secuencias)) { # Si: cuáles promedios de secuencias son mayores al promedio general...
  print (paste ("La secuencia: ", which (width (genomas_3) > Promedio_secuencias), "es mayor al promedio general")) # Imprime "La secuencia x es mayor al promedio general"
} else { # Si no es así... 
  print ("Ninguna es mayor al promedio general") # Imprimir "Ninguna es mayor al promedio general"
}
