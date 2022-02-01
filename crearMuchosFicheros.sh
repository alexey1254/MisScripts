#!/bin/bash
## Script que recibe como parametro un nombre, extension un 
## numero y un directorio para inicializarlo.

echo "Hola $USER :)"
error() {
	echo $1
	exit 1
}

if [ $0 -ne $4 ]; then
	error "Error. Uso del script: nombre, extension un numero y 	directorio"

fi

if [ ! -d $4 ]; then
	error "Error: El directorio no existe"

fi

if [ $3 -lt 1 ]; then
	error "Error: El numero de ficheros no puede ser <1"

fi

for (( i = 1; i <= $3; i++ )); do

	name="$4/$1$i.$2"
	if [ $i -lt 10 ]; then
		name="$4/$10$i.$2"
	fi
	touch $name
	echo "$name creado" | tr -s /
	
done





