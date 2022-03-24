@echo off
setlocal

::***********************************************************
::
:: NOMBRE: ej11-calculadora.cmd
::
:: OBJETIVO: Crear calculadora  con distintas utilidades
:: AUTORES Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 04/03/2022
:: 
:: ENTRADAS: Dos números con los que realizar operaciones
:: SALIDAS: Operación elegida
::
:: VERSIONES 1.0
::
::***********************************************************

set num1=%1
set num2=%2

if not defined num1 set /p num1="Introduzca el primer número: "
if not defined num2 set /p num2="Introduzca el segundo número: "

echo MENU 
echo ******************************
echo A) SUMA
echo B) Resta
echo C) Multiplicación
echo D) Division
echo F) SALIR 

choice /c ABCDF /m "Elija una opcion"

if %errorlevel%==1 (
    set /a suma=num1+num2
    echo El resultado de %num1% + %num2% es %suma%
) else if %errorlevel%==2 (
    set /a resta=num1-num2
    echo El resultado de %num1% - %num2% es %resta%
) else if %errorlevel%==3 (
    set /a multiplicacion=num1*num2
    echo El resultado de %num1% * %num2% es %multiplicacion%
) else if %errorlevel%==4 (
    set /a division=num1/num2
    echo El resultado de %num1% / %num2% es %division%
) else if %errorlevel%==5 (
    exit
)