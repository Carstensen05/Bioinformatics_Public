##################################
############ TAREA 3 #############
############ PARTE 1 #############
######### 08 - 10 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

# Estructuras de selección 
# Elabora un programa que, a partir de un vector de calificaciones de exámenes parciales (3), 
# y de un vector de calificaciones de tareas y exmenes quincenales (10), determine si esa alumnx exentaría 
# o no el curso de bioinformática con los criterios que establecimos al inicio del curso que puedes consultar 
# en el programa que en el classroom. Asume que en el resto de los criterios tienen en 100%

Examenes_parciales <- c (7.5, 7, 8) # Crear vector para los exámenes parciales
Tareas_quincenales <- c (7, 7.3, 7.5, 7, 8, 8, 9, 7.3, 7.5, 10) # Crear vector para los exámenes quincenales y las tareas
# Los valores no son 10, son un poquito más realistas, jeje 

Prom_parciales <- (mean (Examenes_parciales)) * .5 # Obtener el promedio y el porcentaje
Prom_TQ <- mean ((Tareas_quincenales)) * .3 # Obtener el promedio
Proyecto_final <- 8 * .1 # Asignar el porcentaje del proyecto final
Articulo <- 8 * .05 # Asignar el porcentaje del artículo
Participacion <- 10 * .05 # Asignar el porcentaje de participación
Cal_final <- Prom_parciales + Prom_TQ + Proyecto_final + Articulo + Participacion # Asignar calificación final

if (Prom_parciales > 3 & Cal_final > 7) { # Si el promedio de los exámenes parciales es mayor a 3 y la calificación final es mayor a 7...
  print ("Exentas, ¡YAY!") # Imprime "Exentas, ¡YAY!
} else{ # Si no es así... 
  print ("No exentas, :-(") # Imprime "No exentas, :-("
}