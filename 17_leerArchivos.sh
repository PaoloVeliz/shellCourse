# !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Paolo Veliz

echo "Leer un archivo"

cat $1

echo "\n"
echo -e "\nAlmacenar los valores de una variable"
varlosCAt=`cat $1`
echo "$valorCat"

#utilizando la variable IFS (Internal File Separator)

echo -e "\nLeer archivos linea por linea usando while"

while IFS= read linea
do
    echo "$linea"
done < $1