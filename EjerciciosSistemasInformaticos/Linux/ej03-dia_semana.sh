#!/bin/bash

######################################################################
#
# NOMBRE: ej03-dia_semana.sh
#
# OBJETIVO: Mostrar texto con información de la fecha especificada
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 27/02/2022
# 
# ENTRADAS: Día, mes y año
# SALIDAS: Mensaje con la fecha 
#
# VERSIONES: 1.0
#
######################################################################

dia=$1
mes=$2
anio=$3

dow=`date -d "$anio-$mes-$dia" +"%A" 2> /dev/null`
error_fecha=$?
if [ $# -lt 3 ] # Si pasa menos de 3 argumentos
then
    read -p "Introduce el dia " dia
    read -p "Introduce el mes " mes
    read -p "Introduce el año " anio
    dow=`date -d "$anio-$mes-$dia" +"%A" 2> /dev/null`
    error_fecha=$?
fi

# Para capturar el codigo de error
if [ $error_fecha -gt 0 ]
then
    echo "Ha ocurrido un error. El error que dio el comando fue $error_fecha"
    exit
fi

echo "El día $dia/$mes/$anio fue $dow"