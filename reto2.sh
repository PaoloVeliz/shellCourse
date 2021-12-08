# !/bin/bash
# Programa solucion de reto 2 el cual tiene la siguiente instruccion
# Solicitar nombre, edad, direccion y numeros 
# telefonicos y posteriormente imprima toda la informacion

#Autor: Paolo Veliz

nombres=""
edad=0
direccion=""
telefono=""
option=0
while [ $option < 4 ]
do
#Menu para poder ver que quiere hacer
echo "Reto 2"
echo "1. ingresar un nuevo alumno"
echo "2. ver lista de alumnos"
echo "3. salir"
echo -n "ingresa una opcion:"
read 
option=$REPLY
if [[ $option == 1 ]]; then
echo "opcion 3"
fi
if [[ $option == 2 ]]; then
echo "opcion 2"
fi
if [[ $option == 3 ]]; then
echo "salir"
fi
done
