#!/bin/bash
#ejercicio 6 practica 2(parte 1)

if [ $# != 1 ]
then
  echo "error: solo 1 argumento"
else
  usuario=`ls $HOME/.. | grep $1`
if [ -z $usuario ]
  then
    echo "$1 no es un usuario del sistema"
    exit 66
  else
    ls $HOME/../$1
    conectado=`who | grep $1`
    if [ -z $conectado ]
    then
      echo "el usuario $1 NO está conectado"
      exit 6
    else
      echo "el usuario $1 está conectado"
      exit 0
    fi
  fi
fi
