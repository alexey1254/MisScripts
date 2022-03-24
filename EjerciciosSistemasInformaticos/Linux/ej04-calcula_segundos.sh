#!/bin/bash

##########################################################################
#
# NOMBRE: ej04-calcula_segundos.sh
#
# OBJETIVO: Realizar conversión de distintas medidas de tiempo a segundos
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 27/02/2022
# 
# ENTRADAS: Día, hora, minutos y segundos
# SALIDAS: Tiempo total en segundos
#
# VERSIONES: 1.0
#
##########################################################################

dias=$1
horas=$2
minutos=$3
segundos=$4

# Equivalencias a segundos
# 1  día= 24*60*60 = 86400 segundos
# 1 hora=    60*60 =  3600 segundos
# 1 min.=               60 segundos

if [ $# -lt 4 ] # Si el numero de argumentos es menor a cuatro
then
    echo "Numero de argumentos erroneo: $@. Se esperaban 4 argumentos"
    exit
fi

total_seg=$(( dias*86400 + horas*3600 + minutos*60 + segundos ))

echo "$dias día(s), $horas hora(s), $minutos minuto(s) y \
$segundos (segundos) son $total_seg segundo(s)" 