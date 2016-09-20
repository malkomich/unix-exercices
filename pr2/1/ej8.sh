#!/bin/bash
#ejercicio 7 practica 2(parte 1)

dir=$1
if [ -d $dir ]
then
  set -- `ls $dir`
  echo "Los archivos contenidos en el directorio son: " ; echo "$*"
  echo "El numero de ficheros y directorios es: $#"
  set -- `ls -l $dir | grep ^d | tr -s " " | cut -d " " -f 9`
  echo ""
  echo "Ahora solo los subdirectorios: " ; echo "$*"
  echo "Ahora el numero de argumentos es: $#"
else
  echo "El directorio $1 no es valido"
fi
