#!/bin/bash

######################################################################
#
# NOMBRE: ej12-cuadrados.sh
#
# OBJETIVO: Realizar distintas operaciones con dos números recibidos
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 01/03/2022
# 
# ENTRADAS: Dos números con los que realizar operaciones
# SALIDAS: Números pares comprendidos entre ambos números
#          y el cuadrado de ambos
#
# VERSIONES: 1.0
#
######################################################################

num1=$1
num2=$2


# Si no se introduen parámetros, se pedirán por teclado
if [ $# -ne 2 ]
then 
	# Se seguirán pidiendo ambos valores mientras se introduzcan valores vacíos
	while [ -z $num1 ]
	do
		echo 'Introduzca el valor del primer número:'
		read num1
	done
	
	while [ -z $num2 ]
	do
		echo 'Introduzca el valor del segundo número:'
		read num2
	done
fi

# Si el segundo número no es mayor que el primero, se aborta 
if [ $num2 -le $num1 ]
then 
    echo "Error. El segundo número debe ser mayor que el primero"
    exit 1
fi

# Si num1 es par, la i del bucle se inicía en él. Si es impar se inicia en el siguiente número par
resto=$(( num2 % num1 ))
if [ $resto -eq 0 ]
then 
    i=$num1
else
    i=$(( num1 + 1 ))
fi

echo "Los números pares comprendidos entre $num1 y $num2 son:"
for (( i; i<=num2; i+=2 ))
do
    echo "$i"
done

cuadrado_num1=$(( num1 * num1 ))
cuadrado_num2=$(( num2 * num2 ))
echo "El cuadrado de $num1 es igual a $cuadrado_num1"
echo "El cuadrado de $num2 es igual a $cuadrado_num2"