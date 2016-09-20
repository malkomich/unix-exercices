#!/bin/bash
# ejercicio 2 practica 4(parte 1)

if [ $# != 1 ]
then
  echo "error: introduce UN argumento"
else
  num=0
  tamaño=`expr length $1`
  for i in `seq $tamaño`
  do
    letra=`echo $1 | cut -c$i`
    case $letra in
      M) num=`expr $num + 1000`
      ;;
      D) num=`expr $num + 500`
      ;;
      L) num=`expr $num + 50`
      ;;
      X) num=`expr $num + 10`
      ;;
      I) num=`expr $num + 1`
      ;;
    esac
  done
fi
echo "tu numero es $num"
