#!/bin/bash
# ejercicio 10 practica 3(parte 2)

x=0
for i in `seq $#`
do
  long=`expr length $1`
  x=`expr $x + $long`
  shift
done
echo "la salida es $x"
exit $x
