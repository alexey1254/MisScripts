#!/bin/bash

########################################################################
#
# NOMBRE: ej09-info_ruta.sh
#
# OBJETIVO: mostrar información de los ficheros, directorios, etc.
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 01/03/2022
# 
# ENTRADAS: Un fichero
# SALIDAS: Información sobre el fichero
#
# VERSIONES: 1.0
#
########################################################################

fichero=$1

if [ -z "$fichero" ]
then
	echo "ERROR. Se debe indicar al menos un argumento"
	exit 1
fi

# Primero compruebo si el fichero existe
if [ -e "$fichero" ]
then
    echo ----------------------------------------------------------------------------
	echo "Lo que has pasado $fichero sí existe"
else
	echo "Lo que has pasado $fichero no existe"
	# Es un error grave, Aborto la ejecución con código 1
	exit 2
fi


# Tipo del fichero
if [ -d "$fichero" ]
then	
	echo "$fichero es un directorio"
elif [ -f "$fichero" ]
then
	echo "$fichero es un fichero"
elif [ -L "$fichero" ]
then
	echo "$fichero es un enlace"
else
	echo "$fichero es un tipo especial"
fi

permisos=""

# Vamos a mostrar los permisos
if [ -r "$fichero" ]
then
	echo " - Permiso de lectura: SÍ"
	permisos+="r"
else
	echo " - Permiso de lectura: NO"
	permisos+="-"
fi
if [ -w "$fichero" ]
then
	echo " - Permiso de escritura: SÍ"
	permisos+="w"
else
	echo " - Permiso de escritura: NO"
	permisos+="-"
fi

echo -n " - Permiso de ejecución: "
if [ -x "$fichero" ]
then
	echo "SÍ"
	permisos+="x"
else
	echo "NO"
	permisos+="-"
fi

echo "Los permisos son $permisos"

# Comprobar si está vacío o no
if [ -s "$fichero" ]
then
	echo "$fichero tiene contenido"
else
	echo "$fichero está vacío"
fi

echo Fin del programa
echo ----------------------------------------------------------------------------