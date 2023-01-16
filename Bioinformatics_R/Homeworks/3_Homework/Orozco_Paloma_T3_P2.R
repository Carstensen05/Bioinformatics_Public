##################################
############ TAREA 3 #############
############ PARTE 2 #############
######### 08 - 10 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

# Estructuras de selección 
# Elabora un programa que a partir de la fecha de nacimiento de cualquier persona, 
# dando como datos de entrada día, mes y año en formato numérico calcule lo siguiente:
# Su edad en años
# Su signo zodiacal
# La estación del año en el que nació

Day <- readline (prompt = "Día en el que naciste: ") # "Pedir" el día
Day <- as.numeric(Day) # Volver el valor numérico

Mes <- readline (prompt = "Mes en el que naciste (número): ") # "Pedir" el mes
Mes <- as.numeric (Mes) # Volver el valor numérico

Year <- readline (prompt = "Año en el que naciste: ") # "Pedir" el año
Year <- as.numeric (Year) # Volver el valor numérico

# Edad
Fecha <- as.Date (paste0 (Year, "-", Mes, "-", Day)) # Obtener la fecha de nacimiento con la función as.Date
Edad <- as.numeric (difftime (Sys.Date(), Fecha, units = "weeks")) / 52.25 # Obtener la edad, de forma numérica, a partir de las semanas del año
print (Edad) # Imprimir 

                  
# Signo zodiacal
Signo <- if (Day >= 21 & Mes == 3 | Day <= 20 & Mes == 4) { # Si naciste entre el 21 de marzo y el 20 de abril...
  print ( "Eres aries") # Imprime "Eres aries"
} else if (Day >= 21 & Mes == 4 | Day <= 21 & Mes == 5) { # Si naciste entre el 21 de abril y el 21 de mayo...
  print ("Eres Tauro") # Imprime "Eres tauro"
} else if (Day >= 22 & Mes == 5 | Day <= 21 & Mes == 6) { # Si naciste entre el 22 de mayo y el 21 de junio...
  print ("Eres géminis") # Imprime "Eres géminis"
} else if (Day >= 22 & Mes == 5 | Day <= 22 & Mes == 7) { # Si naciste entre el 22 de junio y el 22 de julio...
  print ("Eres cáncer") # Imprime "Eres cáncer"
} else if (Day >= 23 & Mes == 7 | Day <= 23 & Mes == 8) { # Si naciste entre el 23 de julio y el 23 de agosto...
  print ("Eres leo") # Imprime "Eres leo"
} else if (Day >= 24 & Mes == 8 | Day <= 23 & Mes == 9) { # Si naciste entre el 24 de agosto y el 23 de septiembre...
  print ("Eres virgo") # Imprime "Eres virgo"
} else if (Day >= 24 & Mes == 9 | Day <= 23 & Mes == 10) { # Si naciste entre el 24 de septiembre y el 23 de octubre...
  print ("Eres libra") # Imprime "Eres libra"
} else if (Day >= 24 & Mes == 10 | Day <= 22 & Mes == 11) { # Si naciste entre el 24 de octubre y el 22 de noviembre...
  print ("Eres escorpión") # Imprime "Eres escorpión"
} else if (Day >= 23 & Mes == 11 | Day <= 21 & Mes == 12) { # Si naciste entre el 23 de noviembre y el 21 de diciembre...
  print ("Eres sagitario") # Imprime "Eres sagitario"
} else if (Day >= 22 & Mes == 12 | Day <= 20 & Mes == 1) { # Si naciste entre el 22 de diciembre y el 20 de enero...
  print ("Eres capricornio") # Imprime "Eres capricornio"
} else if (Day >= 21 & Mes == 1 | Day <= 18 & Mes == 2) { # Si naciste entre el 21 de enero y el 18 de febrero...
  print ("Eres acuario") # Imprime "Eres acuario"
} else if (Day >= 19 & Mes == 2 | Day <= 20 & Mes == 3) { # Si naciste entre el 19 de febrero y el 20 de marzo...
  print ("Eres piscis") # Imprime "Eres piscis"
}

# La estación del año en que nació 
Estacion <- if (Day >= 21 & Mes == 3 | Day >= 1 & Mes == 4 | Day >= 1 & Mes == 5 | Day <= 20 & Mes == 6) { # Si naciste entre el 21 de marzo y el 20 de junio...
  print ( "Naciste en primavera") # Imprime "Naciste en primavera"
} else if (Day >= 21 & Mes == 6 | Day >= 1 & Mes == 7 | Day >= 1 & Mes == 8 | Day <= 20 & Mes == 9) { # Si naciste entre el 21 de junio y el 20 de septiembre...
  print ("Naciste en verano") # Imprime "Naciste en verano"
} else if (Day >= 21 & Mes == 9 | Day >= 1 & Mes == 10 | Day >= 1 & Mes == 11 | Day <= 20 & Mes == 12) { # Si naciste entre el 21 de septiembre y el 20 de diciembre... 
  print ("Naciste en otoño") # Imprime "Naciste en otoño"
} else if (Day >= 21 & Mes == 12 | Day >= 1 & Mes == 1 | Day >= 1 & Mes == 2 | Day <= 20 & Mes == 3) { # Si naciste entre el 21 de diciembre y el 20 de marzo...
  print ("Naciste en invierno") # Imprime "Naciste en invierno"
} 

# Todo junto
Todo <- paste ("Tienes", Edad, "años de edad;", Signo, "y", Estacion) # Juntar toda la información
print (Todo) # Imprimir
