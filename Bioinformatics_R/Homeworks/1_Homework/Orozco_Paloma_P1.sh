M/#!/bin/bash

##################################
## Ana Paloma Orozco Carstensen ## 
##           Tarea 1            ##
##################################


### Script 1 
# 1 Descargar en ese directorio 10 genomas completos desde NCBI de virus
# 2 Descomprimir o comprimir según sea el caso, utilizando comodines
# 3 Generar un archivo, concatenando, de genomas con extensión fna
# 4 Cambiar este archivo a ARN
# 5 Comprimir el archivo anterior 
# 6 Contar el número de codones de paro y de inicio
# 7 Extra: Corroborar que el número de codones sea correcto 

## 1
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/marine_gokushovirus_uid227357/NC_022790.fna -o "NC_022790.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/mariental_mammarenavirus_uid285600/NC_027134.fna -o "NC_027134.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/marine_rna_virus_pal_e4_uid313445/NC_029310.fna -o "NC_0029310.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/marine_snail_associated_circular_virus_uid293733/NC_027788.fna -o "NC_027788.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/mycobacterium_phage_carcharodon_uid307973/NC_028779.fna -o "NC_028779.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/wenling_shark_virus_uid302030/NC_028377.fna -o "NC_028377.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/beluga_whale_coronavirus_sw1_uid29509/NC_010646.fna -o "NC_010646.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/changjiang_crawfish_virus_1_uid362001/NC_032874.fna -o "NC_032874.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/european_catfish_circovirus_uid263599/NC_025246.fna -o "NC_025246.fna"
curl https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/giant_guitarfish_polyomavirus_1_uid273466/NC_026244.fna -o "NC_026244.fna" 

## 2 
gzip *fna
gzip -d *fna.gz 

## 3 
cat *.fna>genomas_virus.fna

## 4
sed s/T/U/g genomas_virus.fna >genomas_virus_ARN.fna

## 5
gzip genomas_virus_ARN.fna
gzip -d genomas_virus_ARN.fna

## 6 
grep -c AUG genomas_virus_ARN.fna
grep -c UAG genomas_virus_ARN.fna 
grep -c UAA genomas_virus_ARN.fna
grep -c UGA genomas_virus_ARN.fna

## 7
grep -c ATG NC_022790.fna
grep -c ATG NC_027134.fna
grep -c ATG NC_0029310.fna
grep -c ATG NC_027788.fna
grep -c ATG NC_028779.fna
grep -c ATG NC_028377.fna
grep -c ATG NC_010646.fna
grep -c ATG NC_032874.fna
grep -c ATG NC_025246.fna
grep -c ATG NC_026244.fna
# Resultado inicial = 1,170
# Resultado suma = 1,170

grep -c TAG NC_022790.fna
grep -c TAG NC_027134.fna
grep -c TAG NC_0029310.fna
grep -c TAG NC_027788.fna
grep -c TAG NC_028779.fna
grep -c TAG NC_028377.fna
grep -c TAG NC_010646.fna
grep -c TAG NC_032874.fna
grep -c TAG NC_025246.fna
grep -c TAG NC_026244.fna
# Resultado inicial = 653
# Resultado suma = 653

grep -c TAA NC_022790.fna
grep -c TAA NC_027134.fna
grep -c TAA NC_0029310.fna
grep -c TAA NC_027788.fna
grep -c TAA NC_028779.fna
grep -c TAA NC_028377.fna
grep -c TAA NC_010646.fna
grep -c TAA NC_032874.fna
grep -c TAA NC_025246.fna
grep -c TAA NC_026244.fna
# Resultado inicial = 785
# Resultado suma = 785 

grep -c TGA NC_022790.fna
grep -c TGA NC_027134.fna
grep -c TGA NC_0029310.fna
grep -c TGA NC_027788.fna
grep -c TGA NC_028779.fna
grep -c TGA NC_028377.fna
grep -c TGA NC_010646.fna
grep -c TGA NC_032874.fna
grep -c TGA NC_025246.fna
grep -c TGA NC_026244.fna
# Resultado inicial = 1,162
# Resultado suma = 1,161 :( 
