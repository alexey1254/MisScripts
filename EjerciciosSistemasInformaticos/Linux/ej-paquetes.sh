#!/bin/bash

paquete=$1

if [ -z $paquete ] # Si no recibe argumentos
then
    echo "$0 [paquete]"
    exit 1
fi

if [ -n $paquete -a $(apt-cache policy $paquete | grep "*" | wc -l) -ge 1 ] # Comprobar que el paquete esta instalado y mostramos la version instalada
then
echo "El paquete esta instalado con la version: $(apt-cache policy $paquete | grep Instalados | tr -d"Instalados: " "
read -p "Selecciona una opcion " opcion

# Menu con las opciones

select $opcion in Actualizar Reinstalar "Eliminar (Dejar configuracion)" "Eliminar totalmente" Salir
do
    case $opcion in
        Actualizar)
            sudo apt upgrade $paquete
            ;;
        Reinstalar)
            sudo apt --reinstall install $paquete
            ;;
        "Eliminar (Dejar configuracion)")
            sudo apt remove $paquete
            ;;
        "Eliminar totalmente")
            sudo apt purgue $paquete
            ;;
        Salir)
        exit 0
        ;;
        *)
        echo "El valor introducido no es valido"
        ;;
    esac
done

# Comprobar que esta disponible para instalar desde un repo
elif [ -n $paquete -a $(apt-cache policy $paquete | grep -i ninguno | wc -l) -qe 1]
then
read -p "El paquete no esta instalado, deseas instalarlo? si/no " opc
    
    if [ $opc == "si" ]
    then
        sudo apt install $paquete
    fi
else
    echo "No se instalara el paquete
    Saliendo..."
    exit 0
fi





