#!/bin/bash
# ejercicio 8 practica 3(parte 2)

for i in $*
do
  echo $i
  shift
done
# aqui el shift no afecta
