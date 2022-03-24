#!/bin/bash

##################################################################
#
# NOMBRE: ej10-menu_sistema.sh
#
# OBJETIVO: Crear menú con distintas utilidades
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 28/02/2022
# 
# ENTRADAS: Opción de menú que usuario desea elegir
# SALIDAS: Operación elegida
#
# VERSIONES: 1.0
#
##################################################################

echo ""
echo "                 M          E          N          Ú                   "
echo "  ------------------------------------------------------------------- "
echo " |                                                                   |"
echo " | porlibre o 1 -> Espacio libre en disco (%)                        |"
echo " | tamlibre o 2 -> Espacio libre en disco (tamaño)                   |"
echo " | usuario o 3  -> Nombre de usuario                                 |"
echo " | maquina o 4  -> Nombre de la máquina                              |"
echo " | usuarios o 5 -> Número de usuarios del sistema                    |"
echo " | espacio o 6  -> Total de espacio usado en directorios personales  |"
echo " |                                                                   |"
echo "  ------------------------------------------------------------------- "
read -p "Introduzca una opcion: " opcion


case "$opcion" in
	porlibre | 1) 
		df -h | tr -s " " | cut -d " " -f1,5
		;;

	tamlibre | 2) 	
		df -h | tr -s " " | cut -d " " -f1,2
		;;

	usuario | 3) 
		echo "Su usuario es $USER" # o $(whoami)
		;;

	maquina | 4) 
		echo "El nombre de la máquina es $(hostname)"
		;;

	usuarios | 5) 
		echo "El número de usuarios en el sistema es: `who | wc -l`"  
		;;

	espacio | 6)
		echo "El espacio usado en directorios personales es: `df -h /home`"
		;;

	*)
		echo "Ha elegido una opción no válida."
		;;

esac
