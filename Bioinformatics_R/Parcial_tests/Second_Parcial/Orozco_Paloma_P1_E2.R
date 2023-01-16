################################
######## BIOINFORMATICS ########
########## PARCIAL 2 ###########
# ANA PALOMA OROZCO CARSTENSEN #
################################

# A partir de un archivo FASTA de secuencias concatenadas de aminoácidos
# de los siguientes accession numbers (SI alguno de estos números de acceso 
# ya no existen o cambiaron , no lo uses o usa el nuevo)

# El programa debe hacer lo siguiente:
# 1. Cargar las secuencias en R
# 2. La frecuencia de cada aa de todas las secuencias
# 3. Determinar si existe o no alguna(s) secuencia/s) que sean mayores(es) o no a 51 aa.
# 4. Si la secuencias son mayores, a realiza con ellas un alineamiento múltiple con al menos dos algoritmos (Este paso lo debes realizar utilizando código escrito en R , no se vale que digan "me di cuenta que")
# 5. Con las secuencias restantes calcular una matriz de distancias entre éstas.
# 6. (Extra) Elabora un árbol filogenético en R con los resultados de tu alineamiento múltiple.

## 1. 

secuencias <- readAAStringSet ("/Users/michellecarstensen/Desktop/secuencias.faa") # Cargar secuencias
print (secuencias) # Imprimir

## 2. 
frecuencia <- alphabetFrequency (secuencias) # Debido a que cada aminoácido tiene una letra del alfabeto, obtenemos la frecuencia de cada letra
print (frecuencia) # Imprimir

## 3. 
width (secuencias) > 51 # Señalar con TRUE aquellas secuencias mayores a 51 aminoácidos
### Sólo la secuencia 4 es de 51 aminoácidos 

## 4. 
BiocManager::install("msa") # Instalar librería "msa"
library (msa) # Cargar librería 

secuencias_51 <- secuencias [-4, ] # Quitar el 4 renglón, porque es la única secuencia de 51 aminoácidos

alineamiento <- msa (secuencias_51, "Muscle") # Realizar alineamiento con Muscle
print (alineamiento) # Imprimir

alineamiento_2 <- msa (secuencias_51, "ClustalW") # Realizar alineamiento con ClustalW
print (alineamiento_2) # Imprimir

## 5.  
secuencia_4 <- secuencias [4, ] # Dejar sólo el 4 renglón
print (secuencia_4) # Imprimir

matriz <- dist (secuencia_4) # Crear matriz de distancia
print (matriz) # Imprimir
### El resultado es 0 porque sólo es una secuencia

## 6. 
install.packages ("ape") # Instalar librería "ape"
library("ape") # Cargar librería
library ("seqinr") # Cargar libería

alin_sec <- msaConvert (alineamiento, type = "seqinr::alignment") # Generar el alineamiento y convertirlo 
distancia <- dist.alignment (alin_sec, "identity") # Realizar distancias
mat_dis <- as.matrix (distancia) # Generar matriz de distancia

arbol <- nj (mat_dis) # Realizar árbol
plot (arbol) # Graficar 