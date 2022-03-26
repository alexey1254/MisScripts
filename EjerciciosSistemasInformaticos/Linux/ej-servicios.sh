#!/bin/bash

# Si el servicio no esta en el sistema da un error y termina la ejecucion
# Si esta, se muestra su estado (activo/inactivo, habilitado/deshabilitado, enmascarado/no enmascarado)
# Luego se mostrarán 3 preguntas para cambiar su estado. Si esta activo se ¿Deseas pasar el servio a inactivo.
# Preguntar lo mismo para cambiar el estado de habilitado y enmascarado

echo "Hola $USER"

serivicio=$1
pid=`pgrep "$servicio"`

if [ "$#" -eq 0 ] # Si no pasa argumentos:
then
	echo " Usage: $0 [tu servicio]"
	exit 1
fi

# Ejecutamos el comando para obtener una salida de error si no se encuentra
aux=`systemctl status $serv 2> /dev/null`

# Comprobar si el servicio existe

if [ "$?" -ne 0 ]
then 
	echo "El servicio no existe"
	exit 2
fi

# Mostrar el estado del servicio

estado=`systemctl is-enabled $servicio`

if [ "$estado" == "masked" ]
then
	echo "- Enmascarado: Si"
	masked=true
elif [ "$estado" == "enabled" ]
then
	echo "- Activado: Si"
	enabled=true
	echo "- Enmascarado: No"
	masked=false
elif [ "$estado" == "disabled" ]
then
	echo "- Activado: No"
	enabled=false
	echo "- Enmascarado: No"
	masked=false
fi

estado2=`systemctl is-active $servicio`

if [ "$estado2" == "active" ]
then
	echo "- Activo: Si"
	active=true
elif [ "$estado2" == "inactive" ]
then
	echo "- Activo: No"
	active=false
fi

# Preguntar al usuario

if [ "$masked" == true ];then
    echo "--------------"    
    read -p "¿Deseas pasar el servio a desenmascarado?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl unmask $serv 2> /dev/null
		echo "Se ha desenmascarado el servicio"
		exit 0
    fi
fi   

if [ "$masked" == false ];then
    echo "--------------"    
    read -p "¿Deseas pasar el servio a enmascarado?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl mask $serv 2> /dev/null
		echo "Se ha enmascarado el servicio"
		exit 0
    fi
fi   

if [ "$enabled" == true ];then
    echo "--------------"    
    read -p "¿Deseas pasar el servio a deshabilitado?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl disable $serv 2> /dev/null
		echo "Se ha deshabilitado el servicio"
		exit 0
    fi
fi   

if [ "$enabled" == false ];then
    echo "--------------"    
    read -p "¿Deseas pasar el servio a habilitado?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl enable $serv 2> /dev/null
		echo "Se ha habilitado el servicio"
		exit 0
    fi
fi   

if [ "$active" == true ];then
    echo "--------------"    
    read -p "¿Deseas pasar el servio a activo?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl stop $serv 2> /dev/null
		echo "Se ha activado el servicio"
		exit 0
    fi
fi  

if [ "$active" == false ];then
    echo "--------------"    
    read -p "¿Deseas desactivar el servicio?[si/no] " respuesta
    if [ $respuesta == "si" ];then
        systemctl start $serv 2> /dev/null
		echo "Se ha desactivado el servicio"
		exit 0
    fi
fi  
