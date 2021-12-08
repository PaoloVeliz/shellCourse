# !/bin/bash
# programa que simula un menu para instalacion
# de postgres
#autor: Paolo Veliz
opcion=0
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
        ;;
        2)
        echo -e "\n"
        echo "Desinstalando postgres....."
        sleep 3
        ;;
        3)
        echo -e "\n"
        echo "Obteniendo respaldo......"
        sleep 3
        ;;
        4)
        echo -e "\n"
        echo "Restando respaldo......"
        sleep 3
        ;;
        5)
        echo -e "\n"
        echo "Saliendo......"
        sleep 3
        exit 0
        ;;
    esac
done