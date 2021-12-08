# !/bin/bash
# Programa para ejemeplificar la forma de como transferir por la red utilizando
# el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: Paolo Veliz

echo "Empaquetar los scripts de la carpeta shellCourse y transferir por la red a otro grupo
utilizando el comando rsync"
host=""
usuario=""

read -p "ingrese el host: " host
read -p "Ingrese el usuario: " usuario
echo -e "\n En este momento se procederá a empaquetar la carpeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/martosfre/Downloads/platzi
#reemplazar lo que va despues del : para mandar a otra ubicacion, ya que la ubicacion usada es solamente de ejemplo

