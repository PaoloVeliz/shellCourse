# !/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios
#Autor: Paolo Veliz

echo "Archivos - Directorios"
if [ $1 == "d" ]; then
    mkdir -n 755 $2
    echo "Directorio creado con exito"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado con exito"
    ls -la $2
else 
    echo "No existe esa opcion: $1"
fi