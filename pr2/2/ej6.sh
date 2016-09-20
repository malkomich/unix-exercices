#!/bin/bash
# ejercicio 6 practica 2(parte 2)

echo "Introduce un nombre de usuario"
read user
sesiones=`who|grep $user|wc -l`
case $sesiones in
  0) ls $HOME/../$user
  ;;
  1) ps -u $user
  ;;
  *) ps -fu $user
esac
