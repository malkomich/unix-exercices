#!/bin/bash
# ejercicio 5 practica 2(parte 2)

echo "Introduce un nombre de usuario"
read user
sesiones=`who|grep $user|wc -l`
if [ $sesiones == 0 ]
then
  ls $HOME/../$user
elif [ $sesiones == 1 ]
then
  ps -u $user
else
  ps -fu $user
fi
