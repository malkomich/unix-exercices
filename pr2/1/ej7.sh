#!/bin/bash
#ejercicio 7 practica 2(parte 1)

echo "Introduce un directorio valido"
read dir
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
  echo "El directorio $dir no es valido"
fi
