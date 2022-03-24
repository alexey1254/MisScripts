#!/bin/bash

######################################################################
#
# NOMBRE: ej01-resta.sh
#
# OBJETIVO: Realizar operaciones de resta desde script de Bash
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 26/02/2022
# 
# ENTRADAS: Dos números con los que realizar restas
# SALIDAS: Resultado de la operación
#
# VERSIONES: 1.0
#
######################################################################


primerNum=$1
segundoNum=$2

if [ $# -eq 0 ] # Cuando no pasa parametros
    then
    read -p "Introduzca el primer número: " primerNum
    read -p "Introduzca el segundo número: " segundoNum
    resta=$(( $primerNum - $segundoNum ))    
    echo "El resultado de la operacion $primerNum menos $segundoNum es $resta"
    exit

elif [ $# -eq 1 ]
then
    read -p "Introduzca el segundo número: " segundoNum
    resta=$(( $primerNum - $segundoNum ))
    echo "El resultado de la operacion $1 menos $segundoNum es $resta"

else # Cuando pasa parametros
    resta=$(( $primerNum - $segundoNum ))
    echo "El resultado de la operacion $primerNum y $segundoNum es $resta"
    exit
fi

