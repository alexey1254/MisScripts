#!/bin/bash

simbolo=$1

echo Simbolos disponibles:
echo ">, >=, <, <=, =, !="

# read -p "Introduce el simbolo " simbolo

case $simbolo in
	"=")
		echo "-eq"
		;;
	">=")
		echo "-ge"
		;;
	">")
		echo "-gt"
		;;
	"<=")
		echo "-le"
		;;
	"<")
		echo "-lt"
		;;
	"!=")
		echo '\-ne'
		;;
	"*")
		echo "No se puede procesar"
		;;
esac

