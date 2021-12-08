# !/bin/bash
# Programa para poder comprender las expresiones regulares
# en bash

# antes de comenzar se van a copiar un par de reglas a tener en cuenta
# con este tema

# ^.- Caracter que representa el inicio de la expresión regular.
# $.- Caracter que representa el final de la expresión regular.
# *.- Caracter que representa cero o más ocurrencias de la expresión
# +.- Caracter que representa una o más ocurrencias de la expresión.
# {n}.-Representa n veces de una expresión.
# [ ] .- Representa un conjunto de caracteres, por ejemplo: [a-z] representa las letras 
# del abecedario de la a a la z.

# El ejemplo pide un programa que valide la siguiente informacion
# Numero de indentificacion de 10 numeros
# Pais de origen denotado por dos letras en un rango especifico
# fecha de nacimiento en formato yyyMMMDD

identificationChecker='^[0-9]{10}$'
regionChecker='^[A-Z]{2}|[a-z]{2}$'
dateChecker='^(19|20)[0-9]{2}[1-12][1-31]$'
# HAY QUE ARREGLAS EL TEMA DE LAS FECHAS YA QUE SOLO SE VALIDAN SI TIENE UN AÑO QUE EMPIEZE CON 19

echo "Expresiones regulares"
read -p "Ingrese su identficacion: " identificacion
read -p "Ingrese su iniciales de pais: " pais
read -p "Ingrese su fecha de nacimiento: " fechaNacimiento

#Validar la identificacion

if [[ $identificacion =~ $identificationChecker ]]; then
    echo "la identificacion $identificacion cumple los parametros indicados"
else
        echo "la identificacion $identificacion NO cumple los parametros indicados, por favor ingrese otra"
fi    

#Validar la region

if [[ $pais =~ $regionChecker ]]; then
    echo "la region $pais cumple los parametros indicados"
else
        echo "la region $pais NO cumple los parametros indicados, por favor ingrese otra"
fi    

#Validar la fecha de nacimiento

if [[ $fechaNacimiento =~ $dateChecker ]]; then
    echo "la fecha $fechaNacimiento cumple los parametros indicados"
else
        echo "la fecha $fechaNacimiento NO cumple los parametros indicados, por favor ingrese otra"
fi    
