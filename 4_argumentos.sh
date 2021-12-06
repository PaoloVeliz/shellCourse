# !/bin/bash
# Programa para ejemplificar el paso de argumentos
#Autor: Paolo Veliz

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso"
echo "En el horario de: $horarioCurso"

echo "el numero de parametros enviados es: $#"
echo "los parametros enviados son: $*"

#para poder mandar sus argumentos
#al momento de ejecutar se coloca un espacio y el argumento, se vuelve a colocar espacio si se quiere mandar otro argumento
