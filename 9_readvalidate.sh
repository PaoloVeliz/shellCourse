# !/bin/bash
# Programa para validar las entradas del usuario
option=0
backupname=""
clave=""

echo "programa de utilidades postgresql"

read -n1 -p "ingresa una opcion:" option
echo -e "\n"
read -n10 -p "ingresar el nombre del archivo del backup:" backupname
echo -e "\n"
echo "La opcion: $option , backupName:$backupname"
read -s -p "clave: " clave

echo "clave: $clave"

