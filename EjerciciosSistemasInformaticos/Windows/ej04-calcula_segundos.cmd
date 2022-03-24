@echo off
setlocal

::*****************************************************************************
::
:: NOMBRE: ej04-calcula_segundos.cmd
::
:: OBJETIVO: Realizar conversión de distintas medidas de tiempo a segundos
:: AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
:: FECHA: 03/03/2022
:: 
:: ENTRADAS: Día, hora, minutos y segundos
:: SALIDAS: Tiempo total en segundos
::
:: VERSIONES: 1.0
::
::*****************************************************************************

set dias=%1
set horas=%2
set minutos=%3
set segundos=%4

set /a total_seg=dias*86400 + horas*3600 + minutos*60 + segundos
echo %dias% dias, %horas% horas, %minutos% minutos y %segundos% segundos son %total_seg% segundos en total