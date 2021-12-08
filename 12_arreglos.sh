# !/bin/bash
# Programa para ejemplificar el uso de arreglos
#Autor: Paolo Veliz

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Pedro, Pablo, Lucas)
arregloRangos=({A..Z} {10..20})

echo "arreglo de numeros: $[arregloNumeros[*]]"
echo "arreglo de cadenas: $[arregloCadenas[*]]"
echo "arregñp de numeros dado por rangos: $[arregloRangos[*]]"

echo "tamaño de primer arreglo: $[#arregloNumeros[*]]"
echo "tamaño de segundo arreglo: $[#arregloCadenas[*]]"
echo "tamaño de tercer arreglo: $[#arregloRangos[*]]"

