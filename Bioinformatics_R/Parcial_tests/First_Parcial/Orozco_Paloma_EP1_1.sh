#!/bin/bash 

######################
## Examen parcial 1 ##
##      Parte 1     ## 
######################


# 1. Genere una CARPETA llamado mis_genomas
# 2. Descargue 10 archivos fasta de nucleótidos de genomas completos de virus
# 3. Descargue en la misma carpeta el archivo de anotación (es una tabla) de E. coli. El archivo está en la siguiente dirección https://www.dropbox.com/s/rkr9c2k7nhgivvf/Proteinas_Ecoli.tsv?dl=0
# 4. Concatene solo  los genomas en un solo archivo en formato fasta llamado todos_los_genomas.fna
# 5. Guarde en un archivo todas las posibles combinaciones de 3  nucleótidos (por ejemplo AAA, AAC, AAG, etc ) en el archivo concatenado.  
# 6. Comprima el archivo concatenado.
# 7. A partir del archivo comprimido lo convierta y sólo deje este último archivo en RNA.
# 8. A partir del archivo de anotación, es decir, el que descargaste en el paso 3 seleccione las columnas 2,3,4, 7 y 10 las mande a un archivo llamado: coordenadas_de_genes_ecoli.txt
# 9. A partir del archivo generado en el paso anterior cuente el número de genes que tiene esta cepa de E coli
# 10.A partir del archivo del paso 8 calcule el promedio de la longitud en aa de los genes (es la columna 10)

# 1
mkdir mis_genomas # Generar carpeta con la función mkdir
cd mis_genomas # Movernos a la carpeta mis_genomas

# 2 
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/african_green_monkey_polyomavirus_uid15320/NC_004763.fna -o "NC_004763.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/apis_flavivirus_uid390540/NC_035071.fna -o "NC_035071.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/marine_gokushovirus_uid227357/NC_022790.fna -o "NC_022790.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/big_cypress_virus_uid378401/NC_034152.fna -o "NC_034152.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/carrot_ch_virus_1_uid267138/NC_025469.fna -o "NC_025469.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/chayote_yellow_mosaic_virus_uid15193/NC_004618.fna -o "NC_004618.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/corchorus_yellow_spot_virus_uid17993/NC_008492.fna -o "NC_008492.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/hantaan_orthohantavirus_uid14929/NC_005218.fna -o "NC_005218.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/kokobera_virus_uid18843/NC_009029.fna -o "NC_009029.fna" # Descargar y poner nombre
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/moussa_virus_uid264964/NC_025359.fna -o "NC_025359.fna" # Descargar y poner nombre

# 3 
curl https://www.dropbox.com/s/rkr9c2k7nhgivvf/Proteinas_Ecoli.tsv?dl=0 -o "Proteinas_Ecoli" # Descargar y poner nombre

# 4 
cat *fna>todos_los_genomas.fna # Concatenar con la funcion cat

# 5
grep -c [ATGC] todos_los_genomas.fna

# 6 
gzip todos_los_genomas.fna # Comprimir con la función gzip 
gzip -d todos_los_genomas.fna # Descomprimir con la función gzip -d 

# 7 
sed s/T/U/g todos_los_genomas.fna >todos_los_ganomas_ARN.fna # Cambiar T a U para que sea ARN 

# 8
sed -n '2p; 3p; 4p; 7p; 10p' Proteinas_Ecoli | cat >coordenadas_de_genes_ecoli.txt # Seleccionar sólo las columnas 2, 3, 4, 7 y 10 y generar un archivo .txt

# 9 
wc -c coordenadas_de_genes_ecoli.txt

# 10 
?

