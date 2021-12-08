# !/bin/bash
# programa solucion para el reto 4
#autor: Paolo Veliz
opcion=0
checker=""
while :
do
    $checker=""
    clear
    echo "-----------------------------------------"
    echo "PGUTIL - Programa para el reto 4"
    echo "-----------------------------------------"
    echo "            MENU PRINCIPAL               "
    echo "-----------------------------------------"
    echo "1. Procesos actuales"
    echo "2. Memoria disponible"
    echo "3. Espacio de Disco"
    echo "4. Informacion de red"
    echo "5. Variables de entorno configuradas"
    echo "6. Informacion Programa"
    echo "7. Backup informacion"
    echo "8. Salir"
    read -n1 -p "Ingrese una opcion [1-8]: " opcion


    case $opcion in
        1)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando procesos actuales"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        2)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando memoria disponible"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        3)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando espacio en el disco"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        4)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando Informacion de red"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        5)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando variables de entorno configuradas"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        6)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Mostrando informacion del programa"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        7)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Haciendo backup de la informacion"
        else
            echo -e "\n"
            echo "Retornando al menu principal"
        fi
        sleep 3
        ;;
        8)
        echo -e "\n"
        read -n1 -p "usted eligio la opcion: $opcion ¿esta seguro de su opcion?(s/n)" checker
        if [ $checker == "s" ]; then
            echo -e "\n"
            echo "Saliendo......"
            sleep 3
            exit 0
        else
            echo -e "\n"
            echo "Retornando al menu principal"
            sleep 3
        fi
        ;;
    esac
done