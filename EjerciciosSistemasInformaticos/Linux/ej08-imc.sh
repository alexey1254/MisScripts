#!/bin/bash

########################################################################
#
# NOMBRE: ej08-imc.sh
#
# OBJETIVO: Calcular el IMC (Índice de Masa Corporal)
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 01/03/2022
# 
# ENTRADAS: Altura y peso
# SALIDAS: IMC
#
# VERSIONES: 1.0
#
########################################################################

altura=$1
peso=$2

if [ $# -lt 2 ]
then 
echo "Se deben pasar dos parametros, altura en cm y peso en kg"
echo "ADIÓS!"
exit 1
fi

# Fórmula IMC = 10000 * peso / altura2
imc=$(echo "scale=1; 10000 * $peso / ($altura * $altura)" | bc -l)

echo "Su IMC es: $imc"