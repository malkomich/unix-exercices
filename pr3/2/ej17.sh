#!/bin/bash
# ejercicio 17 practica 3(parte 2)

max=20
ast="*"
for i in `seq $1`
do
  num=`expr $RANDOM % $max + 1`
  for j in `seq $num`
  do
    echo -n "*"
  done
  echo ""
done

