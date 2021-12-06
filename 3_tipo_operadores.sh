# !/bin/bash
#Es un programa para revisar los tipos de operadores
#Autor: Paolo Veliz

numA=10
numB=4

echo -e "Operadores aritmeticos"
echo "Numero A $numA"
echo "Numero B $numB"
echo "Una suma -> " $((numA + numB))
echo "Una resta -> " $((numA - numB))
echo "Una division -> " $((numA / numB))
echo "Obtener el residuo -> " $((numA % numB))
echo "Una multiplicacion -> " $((numA * numB))

echo -e "Operadores relacionales"
echo "Numero A $numA"
echo "Numero B $numB"
echo "A < B ->" $((numA < numB))
echo "A > B ->" $((numA > numB))
echo "A <= B ->" $((numA <= numB))
echo "A >= B ->" $((numA >= numB))
echo "A == B ->" $((numA == numB))
echo "A != B ->" $((numA != numB))

echo -e "Operadores de asignacion"
echo "Numero A $numA"
echo "Numero B $numB"
echo "Suma A += B ->" $((numA += numB))
echo "Resta A -= B ->" $((numA -= numB))
echo "Multiplicar A *= B ->" $((numA *= numB))
echo "Dividir A /= B ->" $((numA /= numB))
echo "Residuo A %= B ->" $((numA %= numB))

