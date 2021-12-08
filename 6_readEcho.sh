# !/bin/bash
# Programa para ejemplificar como capturar la ubicacion del
# usuario usando read y echo

option=0
backupname=""

echo "programa de utilidades postgresql"

echo -n "ingresa una opcion:"

read 
option=$REPLY

echo -n "ingresar el nombre del archivo del backup:"

read

backupname=$REPLY

echo "La opcion: $option , backupName:$backupname"
