#!/bin/bash

######################################################################
#
# NOMBRE: ej02-creaUsuario.sh
#
# OBJETIVO: Realizar script para manejar la creación de usuarios
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 26/02/2022
# 
# ENTRADAS: Nombre, apellido y usuario
# SALIDAS: Usuario creado
#
# VERSIONES: 1.0
#
######################################################################

nombre=$1
apellido=$2
usuario=$3

if [ $# -lt 3 ]
then
    echo "Numero de argumentos erroneo: $@. Se esperaban 3 argumentos"
    exit
else
    echo "Bienvenido, $nombre"
    echo "Tu usuario es: $usuario"
    echo "Tus datos son: Nombre: $nombre, Apellido: $apellido"
    echo "Tu ID en nuestro sistema es: $RANDOM"
fi