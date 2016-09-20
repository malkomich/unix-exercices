#!/bin/bash
# ejercicio 3 practica 3(parte 2)

num_lineas=0
for i in $*
do
  if [ -f $i ]
  then
    x=`cat $i | wc -l`
    num_lineas=`expr $num_lineas + $x`
  fi
done
echo "Suma total de lineas: $num_lineas"
echo ""
echo "Otra forma:"
num_lineas=0
while [ $# != 0 ]
do
  if [ -f $1 ]
  then
    x=`cat $1 | wc -l`
    num_lineas=`expr $num_lineas + $x`
  fi
  shift
done
echo "Suma total de lineas: $num_lineas"
