##################################
########### Actividad ############
######### 20 - 09 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

### if (si condicional)

# 1. Elabora un programa que compare tu estatura con tu ídolx y determine si eres más altx.
Yo <- 153 # Asignar mi estatura
Demi <- 161 # Asignar la estatura de Demi Lovato, jaja. 

if (Yo > Demi){ # "Si "Yo" soy mayor a "Demi"... 
  print ("Soy más alta") # Imprime "Soy más alta"
} else { # Si no es así... 
  print ("No soy más alta :(") # Imprime "No soy más alta :("
}
## No soy más alta :(

if (Yo < Demi){ # "Si "yo" soy menor a "Demi"...  
  print ("Demi es más alta") # Imprime "Demi es más alta"
} else { # Si no es así... 
  print ("Ocurrió un milagro, soy más alta") # Imprime "Ocurrió un milagro, soy más alta" 
}
## Demi sí es más alta, jajaja. 

# 2. Toma dos archivos fasta de virus distintos. Leelos con Biostrings y compara sus tamaños (en bp) y determina si el primero es más grande que el segundo.
library (Biostrings) # Cargar librería
library (BSgenome) # Cargar librería

virus_1 <- readDNAStringSet ("/Users/michellecarstensen/Desktop/NC_027788.txt") # Leer el archivo
virus_2 <- readDNAStringSet ("/Users/michellecarstensen/Desktop/NC_029310.txt") # Leer el archivo

print (virus_1) # Imprimir
print (virus_2) # Imprimir

if (width (virus_1) < width (virus_2)) { # Si el virus 1 es menor que el 2... 
  print ("El virus 1 es menor") # Imprime "El virus 1 es menor"
} else { # Si no es así... 
  print ("El virus 1 es mayor") # Imprime "El virus 1 es mayor"
}
## El virus 1 (2305 pb) es menor que el 2 (8187 pb)

# 3. A partir del archivo de anotación del genoma de un organismo determina toma dos proteínas al azar y compara sus tamaños. Toma todos los genes de la cadena 
#    positiva y todos los de la negativa compara sus tamaños promedio y determina cuál de estos es más grande.
t_vaginallis <- read.csv ("/Users/michellecarstensen/Desktop/proteins_258_28630.csv") # Cargar cuadro
View (t_vaginallis) # Ver cuadro

proteina_1 <- t_vaginallis [150, ] # Seleccionar proteína 1
proteina_2 <- t_vaginallis [52014, ] # Seleccionar proteína 2

print (proteina_1) #Imprimir
print (proteina_2) # Imprimir 

if (proteina_1$Length < proteina_2$Length) { # Si la longitud de la proteína 1 es menor al de la proteína 2...
  print ("La proteína 1 es menor") # Imprimir "La proteína 1 es menor"
} else { # Si no es así...  
  print ("La proteína 1 es mayor") # Imprimir "La proteína 1 es mayor"
}
## La proteína 1 (425 aá) es mayor que la proteína 2 (175 aá)

cad_positiva <- subset (t_vaginallis, Strand == "+") # Realizar subset seleccionar la columna de "cadena" y sólo los "+"
cad_negativa <- subset (t_vaginallis, Strand == "-") # Realizar subset seleccionar la columna de "cadena" y sólo los "-"

prom_cad_positiva <- mean (cad_positiva$Length) # Obtener el promedio
prom_cad_negativa <- mean (cad_negativa$Length) # Obtener el promedio

print (prom_cad_positiva) # Imprimir
print (prom_cad_negativa) # Imprimir

if (prom_cad_positiva < cad_negativa) { # Si el promedio de la cadena positiva es menor al de la negativa... 
  print ("El promedio de la cadena positiva es menor") # Imprimir "El promedio de la cadena positiva es menor"
} else { # Si no es así...
  print ("El promedio de la cadena positiva es mayor") # Imprimir "El promedio de la cadena positiva es mayor
}
## El promedio de la cadena positiva (303.2973) es menor que el de la cadena negativa (308.4504)

### Combinación de operadores booleanos

# 1. ¿Cómo harías una condición que considere que te gusta el mole y el pozole?
mole <- "NO" # Asignar la respuesta, no me gusta :(
pozole <- "NO" # Asignar la respuesta, tampoco me gusta :(

if (mole == "SI" & pozole == "SI") { # Si mole & pozole = Sí... 
  print ("Me gusta el mole y el pozole") # Imprime "Me gusta el mole y el pozole"
} else { # Si no es así... 
  print ("No me gusta ninguno") # Imprime "No me gusta ninguno"
}
## Como no me gusta, no se imprimió 

if (mole == "NO" & pozole == "NO") { # Si mole & pozole = No... 
  print ("No me gusta el mole ni el pozole") # Imprime "No me gusta el mole ni el pozole" 
} else { # Si no es así... 
  print ("Ocurrió un milagro, ya me gustan, jaja") # Imprime "Ocurrió un milagro, ya me gustan, jaja"
}
## No me gustan :(

# 2. ¿Cómo harías una condición que considere que te gusta el mole o el pozole?
# Los valores de mole y pozole son los mismos 

if (mole == "SI" | pozole == "SI"){ # Si alguno de los dos = "Sí"... 
  print ("Al menos, me gusta uno") # Imprime "Al menos, me gusta uno"
} else { # Si no es así... 
  print ("No soy buena mexicana :(") # Imprime "No soy buena mexicana :(")
}
## De nuevo, no me gustan, no soy buena mexicana :(

### ifelse 

# 1. Elabora un programa que con tu fecha de cumpleaños te diga en qué estación del año naciste.
Cumpleaños <- "marzo"
# Marzo, abril, mayo y junio = Primavera
# Junio, julio, agosto y septiembre = Verano
# Octubre y noviembre = Otoño
# Diciembre, enero y febrero = Invierno
  
if (Cumpleaños == "marzo" | Cumpleaños == "abril" | Cumpleaños == "mayo" | Cumpleaños == "junio") { # Si cumpleaños es igual a cualquiera de esos meses...
  print("Primavera") # Imprimir "Primavera
} else if (Cumpleaños == "junio" | Cumpleaños == "julio" | Cumpleaños == "agosto" | Cumpleaños == "septiembre") { # Si cumpleaños es igual a cualquiera de esos meses...
 print ("Verano") # Imprimir "Verano"
} else if (Cumpleaños == "octubre" | Cumpleaños == "noviembre") { # Si cumpleaños es igual a cualquiera de esos meses...
  print ("Otoño") # Imprimir "Otoño"
} else if (Cumpleaños == "diciembre" | Cumpleaños == "enero" | Cumpleaños == "febrero") { # Si cumpleaños es igual a cualquiera de esos meses...
  print ("Invierno") # Imprimir "Invierno"
}
## Sí nací en primavera, jaja
  
# 2. Elabora un programa que a partir de las calficaciones de tus examenes parciales y 8 quincenales arroje si exentaras o no este curso usando los criterios definidos en el programa del curso. Asume que en las tareas y demás actividades tienes 10.
# Examenes 50%
# Quincenales 30%
# Proyecto final 10
# Artículo 5
# Participación 5
Examen_1 <- 10 # Asignar calificación 
Examen_2 <- 10 # Asignar calificación 
Examen_3 <- 10 # Asignar calificación 
Quincenal_1 <- 7.3 # Asignar calificación 
Quincenal_2 <- 7 # Asignar calificación 
Quincenal_3 <- 10 # Asignar calificación 
Quincenal_4 <- 10 # Asignar calificación 
Quincenal_5 <- 10 # Asignar calificación 
Quincenal_6 <- 10 # Asignar calificación 
Quincenal_7 <- 10 # Asignar calificación 
Quincenal_8 <- 10 # Asignar calificación 
Proyecto <- 10 # Asignar calificación 
Articulo <- 10 # Asignar calificación 
Participacion <- 10 # Asignar calificación 

Examenes <- ((((Examen_1 + Examen_2 + Examen_3)/3)*50)/10) # Obtener porcentaje
print (Examenes) # Imprimir

Quincenales <- ((((Quincenal_1 + Quincenal_2 + Quincenal_3 + Quincenal_4 + Quincenal_5 + Quincenal_6 + Quincenal_7 + Quincenal_8)/8)*30)/10) # Obtener porcentaje
print (Quincenales) # Imprimir

Proyecto_final <- (Proyecto*10/10) # Obtener porcentaje
print (Proyecto_final) # Imprimir

Articulo <- (Articulo*5/10) # Obtener porcentaje
print (Articulo) # Imprimir

Participacion <- (Participacion*5/10) # Obtener porcentaje 
print (Participacion) # Imprimir

Final <- ((Examenes + Quincenales + Proyecto_final + Articulo + Participacion)/10) # Imprimir calificación final
print (Final) # Imprimir

if (Final > 7 & Examenes >25){ # Si tengo una calificación final mayor a 7 & apruebo los exámenes...
  print ("Exento") # Imprimir "Exento"
} else { # Si no es así... 
  print ("Final") # Imprimir "Final"
}






