# !/bin/bash
# Programa para ejemplificar el uso del ciclo for
# Autor: Paolo Veliz

numeros=(1 2 3 4 5 6)

echo "iteracion en lista de numeros"

for num in $[numeros[*]]
do
echo "Numero:$num"
done

for (( i = 1; i < 10; i++))
do
echo "iteracion: $i"
done

for iteraciones in [1..4]
do
    echo "iteracion numero: $iteraciones"
done