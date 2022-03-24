#!/bin/bash

##################################################################
#
# NOMBRE: ej13-conjuntos.sh
#
# OBJETIVO: Realizar operaciones con conjuntos
# AUTORES: Kevin Ruiz Díaz y Alejandro Marrero Cabrera 
# FECHA: 02/03/2022
# 
# ENTRADAS: Distintos valores que almacenar en conjuntos
# SALIDAS: Mínimo, máximo y media de los distintos conjuntos
#
# VERSIONES: 1.0
#
##################################################################

# Insertar al inicio
for arg in "$@"
do
	conjuntoA=("$arg" "${conjuntoA[@]}")
done
echo "El ConjuntoA es ${conjuntoA[@]}"

# Insertar al final
read -p "Ingresa un valor: " numero
conjuntoB+=("$numero")
while [ $numero -ne 0 ]
do
    read -p "Ingresa un valor: " numero
	if [ $numero -eq 0 ]
	then 
		break 
	fi
conjuntoB+=("$numero")
done
echo "El ConjuntoB es ${conjuntoB[@]}"

# Insertar a la mitad
read -p "Indique el número de elementos que desea tener en conjuntoC: " elementosC

if [ -z $elementosC ]
then 
	elementosC=30
fi

mitad=$(( (${#conjuntoC[@]} - 1) / 2 ))

for (( i = 1; i <= $elementosC; i++ ))
do
	if [ $((i%2)) -eq 0 ]
	then
		conjuntoC=( ${conjuntoC[@]::$mitad} $RANDOM ${conjuntoC[@]:$mitad} )
	else
	conjuntoC=( ${conjuntoC[@]::$mitad} $i ${conjuntoC[@]:$mitad} )
	fi
done
echo "El ConjuntoC es ${conjuntoC[@]}"

# Declaramos aquí las variables para calcular mínimo y máximo
# Se les asigna el primer índice en principio, luego cambiará
numMayorA=${conjuntoA[0]}
numMenorA=${conjuntoA[0]}

for (( i = 0; i < ${#conjuntoA[@]}; i++ ))
do
	mediaA=$(( mediaA + ${conjuntoA[i]} ))

	if [ ${conjuntoA[i]} -gt $numMayorA ]
	then
		numMayorA=${conjuntoA[i]}
	fi

	if [ ${conjuntoA[i]} -lt $numMenorA ]
	then
		numMenorA=${conjuntoA[i]}
	fi
done

mediaA=$(echo "scale=2;$mediaA/${#conjuntoA[@]}" | bc -l)

echo "La media de conjuntoA es: $mediaA"
echo "El número mayor en conjuntoA es: $numMayorA"
echo "El número menor en conjuntoA es: $numMenorA"

numMayorB=${conjuntoB[0]}
numMenorB=${conjuntoB[0]}

for (( i = 0; i < ${#conjuntoB[@]}; i++ ))
do
	mediaB=$(( mediaB + ${conjuntoB[i]} ))
	
	if [ ${conjuntoB[i]} -gt $numMayorB ]
	then
		numMayorB=${conjuntoB[i]}
	fi

	if [ ${conjuntoB[i]} -lt $numMenorB ]
	then
		numMenorB=${conjuntoB[i]}
	fi
done

mediaB=$(echo "scale=2;$mediaB/${#conjuntoB[@]}" | bc -l)

echo "La media de conjuntoB es: $mediaB" 
echo "El número mayor en conjuntoB es: $numMayorB"
echo "El número menor en conjuntoB es: $numMenorB"

numMayorC=${conjuntoC[0]}
numMenorC=${conjuntoC[0]}

for (( i = 0; i < ${#conjuntoC[@]}; i++ ))
do
	mediaC=$(( mediaC + ${conjuntoC[i]} ))
	
	if [ ${conjuntoC[i]} -gt $numMayorC ]
	then
		numMayorC=${conjuntoC[i]}
	fi

	if [ ${conjuntoC[i]} -lt $numMenorC ]
	then
		numMenorC=${conjuntoC[i]}
	fi
done

mediaC=$(echo "scale=2;$mediaC/${#conjuntoC[@]}" | bc -l)

echo "La media de conjuntoC es: $mediaC" 
echo "El número mayor en conjuntoC es: $numMayorC"
echo "El número menor en conjuntoC es: $numMenorC"

mediaTotal=$(echo "scale=2;($mediaA+$mediaB+$mediaC)/3" | bc -l)

if [ $numMayorA -ge $numMayorB ] && [ $numMayorA -ge $numMayorC ]
then 
	numMayorTotal=$numMayorA
elif [ $numMayorB -ge $numMayorC ]
then
	numMayorTotal=$numMayorB
else
	numMayorTotal=$numMayorC
fi

if [ $numMenorA -le $numMenorB ] && [ $numMenorA -le $numMenorC ]
then 
	numMenorTotal=$numMenorA
elif [ $numMenorB -le $numMenorC ]
then
	numMenorTotal=$numMenorB
else
	numMenorTotal=$numMenorC
fi

echo "La media de todos los conjuntos es: $mediaTotal"
echo "El número mayor de todos los conjuntos es: $numMayorTotal"
echo "El número menor de todos los conjuntos es: $numMenorTotal"