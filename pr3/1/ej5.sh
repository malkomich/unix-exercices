#!/bin/bash
# ejercicio 5 practica 3(parte 1)

if [ $# != 1 ]
then
  echo "No has introducido UN argumento"
else
  x=`expr $1 + 0`
  if [ $? == 2 ]
  then
    echo "No es un argumento numerico"
  else
    if [ $1 -lt 0  -o $1 -gt 100 ] 
    then
      echo "no esta entre 0 y 100"
    else
	echo "esta entre 0 y 100"
    fi
  fi
fi
