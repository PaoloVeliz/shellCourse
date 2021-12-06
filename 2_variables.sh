# !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Paolo

echo "nombre: $nombre y opcion $opcion"

#exportar una variable (nombre) para que sea posible usarla en otros archivos

export nombre

#llamar al siguiente script (2_variables_copia.sh)
./2_variables_copia.sh
