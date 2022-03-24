@echo off
setlocal

::*********************************************************************
::
:: NOMBRE: ej06-calcula_cambio.cmd
::
:: OBJETIVO: Controlar el cambio que se debe devolver en un pago
:: AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 03/03/2022
:: 
:: ENTRADAS: Precio artículo y dinero pagado
:: SALIDAS: Cambio correspondiente
::
:: VERSIONES: 1.0
::
::*********************************************************************

set precio=%1
set B500=0
set B200=0
set B100=0
set B50=0
set B20=0
set B10=0
set B5=0
set M2=0
set M1=0

set /p pago="Indique el dinero entregado: " 
set /a cambio=pago-precio

if /I "%cambio%" GEQ "500" (
    set /a B500=cambio  / 500
    set /a cambio=cambio %% 500
)

if /I %cambio% GEQ "200" (
    set /a B200=cambio / 200 
    set /a cambio=cambio %% 200 
)

if /I %cambio% GEQ "100" (
    set /a B100=cambio / 100 
    set /a cambio=cambio %% 100 
)

if /I %cambio% GEQ "50" (
    set /a B50=cambio / 50 
    set /a cambio=cambio %% 50 
)

if /I %cambio% GEQ "20" (
    set /a B20=cambio / 20 
    set /a cambio=cambio %% 20 
)

if /I %cambio% GEQ "10" (
    set /a B10=cambio / 10 
    set /a cambio=cambio %% 10 
)

if /I %cambio% GEQ "5" (
    set /a B5=cambio / 5 
    set /a cambio=cambio %% 5 
)

if /I %cambio% GEQ "2"  (
    set /a M2=cambio / 2 
    set /a cambio=cambio %% 2 
)

if /I %cambio% GEQ "1"  (
    set /a M1=cambio / 1 
    set /a cambio=cambio %% 1 
)

echo Billetes de 500€= %B500%
echo Billetes de 200€= %B200%
echo Billetes de 100€= %B100%
echo Billetes de 50€= %B50%
echo Billetes de 20€= %B20%
echo Billetes de 10€= %B10%
echo Billetes de 5€= %B5%
echo Monedas de 2€= %M2%
echo Monedas de 1€= %M1%