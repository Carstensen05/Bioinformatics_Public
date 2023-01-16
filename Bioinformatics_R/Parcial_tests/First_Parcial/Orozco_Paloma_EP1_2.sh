
######################
## Examen parcial 1 ##
##      Parte 2     ##
######################


# 1. A partir de la estrofa principal de la canción de baby shark (https://youtu.be/XqZsoesa55w) genere el resto de la la letra y la guarde en un archivo. Es decir dado un archivo con la siguiente estrofa 
# Baby shark, do do, do do do do
# Baby shark, do do, do do do do
# Baby shark, do do, do do do do
# Baby shark

# El script debe generar toda la canción y escribirla en un archivo llamado letra_compleja.txt

# 2. Tomen el primer párrafo de su libro favorito guardenlo en un archivo. Cambien todo a lenguaje inclusivo. Si no es posible esto cambien todas las a y o en todas las palabras por e o x y guardenlas en un  texto.

# 1
# touch >Baby0.txt
# Copié el tecto de forma manual 


cp Baby0.txt Baby1.txt # Copiar en un nuevo archivo para Mommy
sed s/Baby/Mommy/g Baby1.txt # Cambiar Baby por Mommy 

cp Baby0.txt Baby2.txt # Copiar en un nuevo archivo para Daddy
sed s/Baby/Daddy/g Baby2.txt # Cambiar Baby por Daddy

cp Baby0.txt Baby3.txt # Copiar en un nuevo archivo para Grandma
sed s/Baby/Grandma/g Baby3.txt # Cambiar Baby por Grandma  

cp Baby0.txt Baby4.txt # Copiar en un nuevo archivo para Grandpa
sed s/Baby/Grandpa/g Baby5.txt # Cambiar Baby por Grandpa 

cp Baby0.txt Baby5.txt # Copiar en un nuevo archivo para Lets_go
sed s/Baby/Lets_go/g Baby6.txt # Cambiar Baby por Lets_go 

cp Baby0.txt Baby7.txt # Copiar en un nuevo archivo para Run_away
sed s/Baby/Run_away/g Baby7.txt # Cambiar Baby por Run_away 

cp Baby0.txt Baby8.txt # Copiar en un nuevo archivo para Safe_at_last
sed s/Baby/Safe_at_last/g Baby8.txt # Cambiar Baby por Safe_at_last 

cp Baby0.txt Baby9.txt # Copiar en un nuevo archivo para Its_the_ending
sed s/Baby/Its_the_ending/g Baby9.txt # Cambiar Baby por Its_the_ending 

cat Baby*.txt >letra_compleja.txt

# 2
# touch >libro.txt
# Copié el texto de forma manual
sed s/a/x/g libro.txt # Cambiar a por x
sed s/o/x/g libro.txt # Cambiar o por x
