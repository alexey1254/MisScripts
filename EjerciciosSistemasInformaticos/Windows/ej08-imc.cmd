@echo off
setlocal

::**************************************************************
::
:: NOMBRE: ej08-imc.cmd
::
:: OBJETIVO: Calcular el IMC (Índice de Masa Corporal)
:: AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 04/03/2022
:: 
:: ENTRADAS: Altura y peso
:: SALIDAS: IMC
::
:: VERSIONES: 1.0
::
::**************************************************************

set altura=%1
set peso=%2

REM Fórmula IMC = 10000 * peso / altura^2
set /a imc= 10000 * peso / (%altura% * %altura%)

if %imc% LSS 16 (
	set clasificacion="Delgadez severa"
) else if %imc% LSS 17 (
	set clasificacion="Delgadez moderada"
) else if %imc% LSS 19 (
	set clasificacion="Delgadez leve"
) else if %imc% LSS 25 (
	set clasificacion="Normal"
) else if %imc% LSS 30 (
	set clasificacion="Preobesidad"
) else if %imc% LSS 35 (
	set clasificacion="Obesidad leve"
) else if %imc% LSS 40 (
	set clasificacion="Obesidad media"
) else if %imc% GEQ 40 (
	set clasificacion="Obesidad mórbida"
)

echo Su IMC es: %imc%. Se encuentra en la clasificación %clasificacion%