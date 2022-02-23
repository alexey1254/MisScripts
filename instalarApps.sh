## Instalador de apps de preferencia mia para vms
## Ejecutar como admin

echo "--------------------- Se va a instalar Mysql-Server ---------------------"

sudo apt update
sudo apt install mysql-server -y

echo "--------------------- Se ha instalado mariaDB ---------------------"

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python3.9 -y

echo "--------------------- Se ha instalado python 3.9 ---------------------"

sudo apt install openjdk-17-jdk -y

echo "--------------------- Se ha instalado Java 17 ---------------------"

sudo sudo snap install code --classic

echo "--------------------- Se ha instalado VS-Code ---------------------"

echo " ---------------------Ahora se va a configurar MySql ---------------------"

sudo mysql_secure_installation

echo "--------------------- Se han completado todas las tareas ---------------------"
