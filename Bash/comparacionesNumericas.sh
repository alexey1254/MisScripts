echo Simbolos disponibles:
echo ">, >=, <, <=, =, !="
echo Introduce el simbolo:
read simbolo

case $simbolo in
	"=")
		echo "-eq"
		;;
	">=")
		echo "-ge"
		;;
	">")
		echo "-gt"
		;;
	"<=")
		echo "-le"
		;;
	"<")
		echo "-lt"
		;;
	"!=")
		echo "-ne"
		;;
	"*")
		echo "No se puede procesar"
		;;
esac

