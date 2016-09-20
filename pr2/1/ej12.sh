#!/bin/bash
# ejercicio 12 practica 2(parte 1)

num_fich=`ls -l | grep ^- | wc -l`
if [ $num_fich -gt 3 ]
then
  echo "Hay mas de 3 ficheros"
else
  echo "No hay mas de 3 ficheros"
fi
ls -l | grep ^-
