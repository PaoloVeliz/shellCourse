# !/bin/bash
# Programa para ejemplificar un empaquetado con clave usando zip
# Autor: Paolo Veliz

#primero se descarga si no se tiene la herramienta
sudo apt-get install zip
echo "Empaqetar todos los scripsde una carpeta con zip y asignarle una clave de seguridad"

zip -e shellCourse *.sh
