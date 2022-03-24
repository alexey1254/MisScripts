#!/bin/bash

########################################################################
#
# NOMBRE: ej06-calcula_cambio.sh
#
# OBJETIVO: Controlar el cambio que se debe devolver en un pago
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 28/02/2022
# 
# ENTRADAS: Precio artículo y dinero pagado
# SALIDAS: Cambio correspondiente
#
# VERSIONES: 1.0
#
########################################################################

precio=$1
B500=0
B200=0
B100=0
B50=0
B20=0
B10=0
B5=0
M2=0
M1=0


read -p "Indique el dinero entregado: " pago
cambio=$(( pago - precio ))

if [ $cambio -ge 500 ]
then
    B500=$(( cambio / 500 ))
    cambio=$(( cambio % 500 ))
fi

if [ $cambio -ge 200 ]
then
    B200=$(( cambio / 200 ))
    cambio=$(( cambio % 200 ))
fi

if [ $cambio -ge 100 ]
then
    B100=$(( cambio / 100 ))
    cambio=$(( cambio % 100 ))
fi

if [ $cambio -ge 50 ]
then
    B50=$(( cambio / 50 ))
    cambio=$(( cambio % 50 ))
fi

if [ $cambio -ge 20 ]
then
    B20=$(( cambio / 20 ))
    cambio=$(( cambio % 20 ))
fi

if [ $cambio -ge 10 ]
then
    B10=$(( cambio / 10 ))
    cambio=$(( cambio % 10 ))
fi

if [ $cambio -ge 5 ]
then
    B5=$(( cambio / 5 ))
    cambio=$(( cambio % 5 ))
fi

if [ $cambio -ge 2 ] 
then
    M2=$(( cambio / 2 ))
    cambio=$(( cambio % 2 ))
fi

if [ $cambio -ge 1 ] 
then
    M1=$(( cambio / 1 ))
    cambio=$(( cambio % 1 ))
fi

echo "Billetes de 500€= $B500"
echo "Billetes de 200€= $B200"
echo "Billetes de 100€= $B100"
echo "Billetes de 50€= $B50"
echo "Billetes de 20€= $B20"
echo "Billetes de 10€= $B10"
echo "Billetes de 5€= $B5"
echo "Monedas de 2€= $M2"
echo "Monedas de 1€= $M1"
