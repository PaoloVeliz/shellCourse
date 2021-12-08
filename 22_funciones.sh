# !/bin/bash
# Programa para ejemplificar el uso de funciones dentro de bash
# Autor: Paolo Veliz

# !/bin/bash
# programa que simula un menu para instalacion
# de postgres
#autor: Paolo Veliz
#---------------------------------INICIO CODIGO----------------------------------------
#Variable para opcion y fecha
opcion=0
fechaActual=`date +%Y%n%d`
#Declaracion de funciones
instalar_postgres () {
    echo -e "\nInicio de instalacion...."
    verifyInstall=$(wich psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres ya esta instalado en esta maquina"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt update 
        echo "$password" | sudo -S apt-get -y install postgresql postgresqñ-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
        
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar...."
}

desinstalar_postgres () {
    echo -e "\nInicio de desinstalacion...."
    read -s -p "Ingresar contraseña de sudo: " password
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql             
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar...."
}

obtener_respaldo () {
    echo -e "\nInicio de obtencion...."
    echo "Listar base de datos"
    echo -e "\n"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar:" bddRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando respaldo...."
        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
        echo "Respaldo realizado con exito en la ubicacion: $1/bddRespaldo$fechaActual.bak"
    else
        echo "El directorio $1 no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar...."
}
restaurar_respaldo () {
    echo -e "\nInicio de restauracion...."
    read -p "Ingresar el directorio donde estan los respaldos:" directorioBackup
    ls -la $directorioBackup
    read -p "Elegir el respaldo a restaurar" respaldoRestaurar
    echo -e "\n"
    read -p "Ingrese el nombre de la base de datos destino" bddDestino
    #verificar si la bdd existe
    verifyBdd=$(sudo -u postgres psql lqt | cut-d \| -f l \ grep -wq $bddDestino)
    if [ $? -eq 0 ]; then
        echo "restaurando en la base de datos destino: $bddDestino"
    else
        sudo -u postgresql psql -c "create database $bddDestino"
    fi
    if [ -f "$1/$respaldorRestaurar" ]; then
        echo "restaurando respaldo...."
        sudo -u postgres pg_restore -Fc -d $bddDestino "$1/$respaldoRestaurar"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldoRestaurar no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar...."
}
#Declaracion del menu
while :
do
    clear
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "-----------------------------------------"
    echo "            MENU PRINCIPAL               "
    echo "-----------------------------------------"
    echo "1. Instalar postgres"
    echo "2. Desinstalar postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    read -n1 -p "Ingrese una opcion [1-5]: " opcion


    case $opcion in
        1)
        echo -e "\n"
        echo "Instalando postgres....."
        sleep 3
        instalar_postgres
        ;;
        2)
        echo -e "\n"
        echo "Desinstalando postgres....."
        sleep 3
        desinstalar_postgres
        ;;
        3)
        echo -e "\n"
        echo "Obteniendo respaldo......"
        sleep 3
        obtener_respaldo
        ;;
        4)
        echo -e "\n"
        echo "Restando respaldo......"
        sleep 3
        restaurar_respaldo
        ;;
        5)
        echo -e "\n"
        echo "Saliendo......"
        sleep 3
        exit 0
        ;;
    esac
done