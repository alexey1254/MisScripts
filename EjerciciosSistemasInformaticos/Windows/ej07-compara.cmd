@echo off
setlocal

::***********************************************************
::
:: NOMBRE: ej07-compara.cmd
::
:: OBJETIVO: Realizar comparación entre dos números
:: AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 04/03/2022
:: 
:: ENTRADAS: Dos números
:: SALIDAS: Resultado de la comparación
::
:: VERSIONES: 1.0
::
::***********************************************************

set primerNum=%1
set segundoNum=%2

if not defined primerNum set /p primerNum="Introduzca el primer número: "
if not defined segundoNum set /p segundoNum="Introduzca el segundo número: "

if "%primerNum%" GTR "%segundoNum%" (
	echo El %primerNum% es menor que %segundoNum%
) else if "%primerNum%" LSS "%segundoNum%" ( 
	echo El %primerNum% es mayor que %segundoNum%
) else ( 
	echo Los números son iguales
)

