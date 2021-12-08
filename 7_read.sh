# !/bin/bash
# Programa para ejemplificar como capturar la ubicacion del
# del usuario usando read sin usar la variable REPLY

option=0
backupname=""

echo "programa de utilidades postgresql"

read -p "ingresa una opcion:" option

read -p "ingresar el nombre del archivo del backup:" backupname

echo "La opcion: $option , backupName:$backupname"
