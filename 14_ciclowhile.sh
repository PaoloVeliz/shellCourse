# !/bin/bash
# Programa para ejemplificar un ciclo while en bash shell
numero=1
while [ $numero -ne 10 ]
do
    echo "numero: $numero"
    numero=$(( numero + 1 ))
done
