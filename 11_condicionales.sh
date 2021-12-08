# !/bin/bash

# Programa para ejemplificar el uso de condicionales if, case
# en lenguaje bash

#Autor: Paolo Veliz

notaClase=0
edad=0

echo "ejemplo de sentencia if"
read -n1 -p "indique cual es su nota (1-10): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
elif (( $notaClase == 6)); then
    echo "Puede optar a otro examen"
else
    echo "El alumno no aprueba la materia"
fi

read -p "indique cual es su edad: " edad

if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "la persona puede votar"
fi

# Sentencia case

opcion=0

echo "ejemplo sentencia case"
read -n1 -p "indique cual es su opcion (1-5): " opcion
echo -e "\n"

case $opcion in
1) echo -e "operacion 1, guardar archivo";;
2) echo -e "operacion 2, eliminar un archivo";;
3) echo -e "operacion 3, comparar un archivo";;
4) echo -e "operacion 4, modificar un archivo";;
5) echo -e "operacion 5, salir"
esac

