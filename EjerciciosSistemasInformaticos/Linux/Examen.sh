#!/bin/bash

ruta=$1
esDirectorio=0

if [ -z "$ruta" ] # Si no pasa un argumento, se le pide
then
	read -p "Introduce la ruta " ruta
fi

if [ $# -gt 1 ] # Comprobamos que pasa solo un parametro
then 
	echo "El numero de parametros debe de ser uno"
	exit 1
	
fi

if [ -e "$ruta" ] # Si el fichero no existe se sale del programa
then
	echo "El fichero existe"
else
	echo "El argumento no es valido, $ruta no existe"
	exit 2
fi

if [ -d "$ruta" ]
then	
	echo "$ruta es un directorio"
elif [ -f "$ruta" ]
then
	echo "$ruta es un fichero"
	esDirectorio=1
fi

# Vamos a mostrar los permisos
if [ -r "$ruta" ]
then
	echo " - Permiso de lectura: SÍ"
	permisos+="r"
else
	echo " - Permiso de lectura: NO"
	permisos+="-"
fi
if [ -w "$ruta" ]
then
	echo " - Permiso de escritura: SÍ"
	permisos+="w"
else
	echo " - Permiso de escritura: NO"
	permisos+="-"
fi

echo -n " - Permiso de ejecución: "
if [ -x "$ruta" ]
then
	echo "SÍ"
	permisos+="x"
else
	echo "NO"
	permisos+="-"
fi

echo "Los permisos para el propietario son: $permisos"

if [ $esDirectorio -eq 1 ] # Si es un fichero 
then
	echo "Elige una opcion: 
	
	A: Convertir a documento confidencial
	
	B: Convertir a un documento compartido de solo lectura para el grupo 		(el grupo sólo puede leerlo)
	
       	C: Convertir a un documento compartido con el grupo (el grupo 		también puede editarlo)
       	
      	D: Convertir a un documento público (tanto el grupo como los demás 	pueden leerlo)
      	
     	F: Revocar el ejecutable (retirar el permiso de ejecución a todos, 	los demás permisos quedan igual)
     	
        G: Salir"
select opcion in a b c d f g
do
	case "$opcion" in
		a)
		``chmod 700 $ruta``
		exit 0
		;;
		b)
		``chmod 740 $ruta``
		exit 0
		;;
		c)
		``chmod 750 $ruta``
		exit 0
		;;
		d)
		``chmod 755 $ruta``
		exit 0
		;;
		f)
		``chmod u-x,g-x,o-x $ruta``
		exit 0
		;;
		g)
		echo "Saliendo..."
		exit 0
		;;
		*)
		echo "Error opcion invalida"
		exit 3
		;;
	esac
done
		
fi

if [ $esDirectorio -eq 0 ] # Si es un directorio
then
	echo "Elige una opcion:
	
	A: Convertir en directorio confidencial
	
       	B: Convertir en compartido con el grupo solo lectura (para el grupo 		es acceso de solo lectura)
       	
       	C: Convertir en compartido con el grupo acceso total (el grupo tiene 		todos los permisos)
       	
       	D: Convertir en público (grupo y otros con acceso solo lectura)
       	
       	G: Salir"
       	
select opcion in a b c d g
do
	case "$opcion" in
		a)
			``chmod 700 $ruta``
			exit 0
		;;
		b)
			``chmod 740 $ruta``
			exit 0
		;;
		c)
			``chmod 770 $ruta``
			exit 0
		;;
		d)
			``chmod 744 $ruta``
			exit 0
		;;
		g)
			echo "Saliendo..."
			exit 0
			;;
		*)
			echo "Error opcion invalida"
			exit 3
			;;
	esac
done

fi
