#!/bin/bash

paquete=$1

if [ -z $paquete ] # Si no recibe argumentos
then
    echo "$0 [paquete]"
    exit 1
fi



