@echo off
setlocal

::*******************************************************************
::
:: NOMBRE: ej01-resta.cmd
::
:: OBJETIVO: Realizar operaciones de resta desde script de Bash
:: AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 03/03/2022
:: 
:: ENTRADAS: Dos números con los que realizar restas
:: SALIDAS: Resultado de la operación
::
:: VERSIONES: 1.0
::
::*******************************************************************

set num1=%1
set num2=%2

if not defined num1 set /p num1="Introduzca el primer número: "
if not defined num2 set /p num2="Introduzca el segundo número: "

set /a resta=num1-num2
echo El resultado es: %num1% - %num2% = %resta%
