##################################
############ TAREA 3 #############
############ PARTE 5 #############
######### 08 - 10 - 2021 #########
## Ana Paloma Orozco Carstensen ##
##################################

# Principio del tío Ben Elabora un programa que a partir del “poder” de diez personajes (ficticios o no) dado como datos de entrada, genere un mensaje para cada uno de ellos
# que indique el mensaje “con un gran poder conlleva una gran responsabilidad” si es que su
# “poder” es mayor que un valor umbral que ustedes determinen de forma arbitraria. 
# De tal forma que, si su personaje es spider-man o-b-v-i-a-m-e-n-t-e, les arroje el mensaje del tío Ben.


Spider_man <- 10
Capitán_América <- 9
Iron_Man <- 8
Groot <- 7
Doctor_Strange <- 6
Thor <- 5
Ant_Man <- 4
Hulk <- 3
Ultrón <- 2
Loki <- 1
Thanos <- 0

Personaje <- readline (prompt = "¿Cuál es el personaje (Spider_man, Capitán _América, Iron_man, Groot, Doctor_Strange, Thor, Ant_Man, Hulk, Ultrón, Loki o Thanos: ?") # "Pedir" el personaje
print (Personaje)

if (Personaje > 9) { # Si el valor del personaje es mayor a 9...
  print ("Un gran poder conlleva una gran responsabilidad") # Imprimir "Un gran poder conlleva una gran responsabilidad"
} else { # Si no es así... 
  print ("No es tan poderoso") # Imprimir "No es tan poderoso" 
}

