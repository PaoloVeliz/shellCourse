# !/bin/bash
# Programa para ejemplificar el empaquetamiento con un archivo y usando tar
# Autor: Paolo Veliz
echo "empaquetar todos los scripts de la caperta en un archivo comprimido"

tar -cvf shellCourse.tar *.sh

#usando gzip

echo "empaquetar usando gzip"
# cuando se empaqueta con gzip, el empaquetamiento
# anterior se elimina
# solo permite empaquetar un archivo a la vez
gzip shellCourse.tar 

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 7_read.sh

#usando PBZIP 2
# permite solo un archivo
# si queremos mas de un archivo tenemos que usar un complemento
# como el comando tar
# ayuda con el multicore

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2
