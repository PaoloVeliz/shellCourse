# !/bin/bash
# Programa para ejemplificar como se escribe un archivo
# Autor: Paolo Veliz

echo "Escribir en un archivo"
echo $2 >> $1

# Adicion multilinea

cat <<EOM >> $1
$2
EOM

