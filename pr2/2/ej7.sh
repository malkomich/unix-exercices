#!/bin/bash
# ejercicio 7 practica 2(parte 2)

if [ $# -ne 1 ]
then
  echo "error: solo un argumento"
else	
  usuarios=`who | tr -s " " | cut -d" " -f1 | grep $1`
  echo "los usuarios que tienen esa cadena de caracteres son: $usuarios"
fi
