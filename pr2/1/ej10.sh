#!/bin/bash
# ejercicio 10 practica 2(parte 1)

if [ $# != 1 ]
then
  echo "Error: Introduce 1 argumento"
else
  var=`cd ./$1`
  if [ $? == 0 ]
  then
    num_fich=`ls -l ./$1 | grep ^- | wc -l`
    echo "numero de ficheros: $num_fich"
  else
    echo "dame la ruta completa"
    read dir
    num_fich=`ls -l $dir | grep ^- | wc -l`
    echo "numero de ficheros: $num_fich"
  fi
fi
