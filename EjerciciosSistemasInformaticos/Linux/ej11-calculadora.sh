#!/bin/bash

##################################################################
#
# NOMBRE: ej11-calculadora.sh
#
# OBJETIVO: Crear calculadora  con distintas utilidades
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 28/02/2022
# 
# ENTRADAS: Dos números con los que realizar operaciones
# SALIDAS: Operación elegida
#
# VERSIONES: 1.0
#
##################################################################

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

echo "Elija una operación: "

select opcion in Suma Resta Multiplicación División Salir
do

	case "$opcion" in

		Suma)
			echo "El resultado de $num1+$num2 es $(( num1 + num2 ))"
			;;

		Resta)
			echo "El resultado de $num1-$num2 es $(( num1 - num2 ))"
			;;

		Multiplicación)
			echo "El resultado de $num1*$num2 es $(( num1 * num2 ))"
			;;

		División)
			echo "El resultado de $num1/$num2 es $(( num1 / num2 ))"
			;;

		Salir)
			break
			;;

		*)	
			echo "Error!! Opción inválida: $REPLY"
			;;
	esac

done
