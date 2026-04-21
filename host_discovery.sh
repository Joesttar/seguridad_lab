#!/bin/bash

#------ Definicion de una Funcion-------
function ayuda(){
	echo "Uso: $0<prefijo de red>"
	echo "Ejemplo: $0 192.168.1"
	exit 1
}

#-----Estructura de Control(Argumentos)
if [ -z "$1"]; then
	ayuda
fi

red=$1
echo "Iniciando escaneo de la red: $red./24"

#------Loop(Bucle)---------
for i in $(seq 1 254); do
	# Ejecucion de comando y manejo de flujo
	ping -c 1 -W $red.$i > /dev/null 2>&1 && echo "Host encontrado: $red.$i" &
 done
#------- Esperar a que termine los procesos------
wait
echo "Escaneo Final"
