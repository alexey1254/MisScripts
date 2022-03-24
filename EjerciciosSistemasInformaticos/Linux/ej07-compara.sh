#!/bin/bash

########################################################################
#
# NOMBRE: ej07-compara.sh
#
# OBJETIVO: Realizar comparación entre dos números
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 28/02/2022
# 
# ENTRADAS: Dos números
# SALIDAS: Resultado de la comparación
#
# VERSIONES: 1.0
#
########################################################################

primerNum=$1
segundoNum=$2

if [ $# -lt 2 ]
then 
    read -p "Introduzca el primer número: " primerNum
    read -p "Introduzca el segundo número: " segundoNum
fi

if [ $primerNum -lt $segundoNum ]
then
    echo "El $primerNum es menor que $segundoNum"
elif [ $primerNum -gt $segundoNum ]
then
    echo "El $primerNum es mayor que $segundoNum"
else
    echo "Los números son iguales"
fi