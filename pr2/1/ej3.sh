#!/bin/bash
# ejercicio 3 practica 2(parte 1)

echo "Numero de argumentos recibidos" ; echo $#
echo $*
echo "El nombre del script es: " ; echo $0
echo "El argumento 1 es " ; echo $1
echo "El argumento 2 es " ; echo $2
shift
echo "Se ha producido un desplazamiento"
echo "Ahora el numero de argumentos es " ; echo $#
echo "Ahora el argumento 1 es " ; echo $1
shift
echo "Y el argumentos 2 ahora es " ; echo $2
