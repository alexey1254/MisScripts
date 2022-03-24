#!/bin/bash

########################################################################
#
# NOMBRE: ej05-calcula_tiempos.sh
#
# OBJETIVO: Realizar conversión de segundos distintas medidas de tiempo
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 28/02/2022
# 
# ENTRADAS: Número de segundos
# SALIDAS: Tiempo en días, horas, minutos y segundos
#
# VERSIONES: 1.0
#
########################################################################

num_segundos=$1

# Si no se introduen parámetros, se pedirán por teclado
if [ $# -ne 1 ]
then 
	# Se seguirán pidiendo ambos valores mientras se introduzcan valores vacíos
	while [ -z $num_segundos ]
	do
		echo 'Introduzca el número de segundos:'
		read num_segundos
	done
fi

dias=$(( num_segundos / 86400 ))
horas=$(( num_segundos / 3600 ))
minutos=$(( num_segundos / 60 ))
segundos=$(( num_segundos % 60 ))

echo "$num_segundos segundos, es igual a $dias dias, $horas horas, $minutos minutos y $segundos segundos."