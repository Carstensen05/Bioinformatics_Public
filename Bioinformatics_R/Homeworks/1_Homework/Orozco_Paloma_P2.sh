#!/bin/bash

##################################
## Ana Paloma Orozco Carstensen ##
##           Tarea 1            ##
##################################



### Script 2 
# 1 Haz un script que cree 40 archivos .txt en una carpeta del escritorio (con touch) 
# 2 Comprimir con gzip sólo los archivos 25 y 29
# 3 Escribir un script que cambie la extensión de los archivos que contengan un 3 en su nombre de .txt a .md
# 4 Escribir un script que copie todos los archivos /Desktop a una carpeta del directorio de trabajo 
# 5 Preparar un script que cuente el número de directorios y archivos que hay en /Desktop 
# 6 Devolver el número de archivos que se han guardado 

## 1
touch archivos{1..40}.txt 

## 2 
gzip archivos25.txt archivos29.txt 

## 3
for f in archivos*3*txt; do
   mv -- "$f" "${f%.txt}.md"
done

## 4 
mkdir Directorio_trabajo
cp archivos* Directorio_trabajo 

## 5
ls -la | wc -l > Resultado

## 6 
cat Resultado 
