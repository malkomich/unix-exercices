#!/bin/bash
# ejercicio 3 practica 4(parte 1)

palabras=`cat << DELIM1
uno
dos
tres
DELIM1`

numeros=`cat << DELIM2
34
56
01
DELIM2`

for i in `seq 5`
do
  for j in `seq $1`
  do
    n1=`expr $RANDOM % 3 + 1`
    n2=`expr $RANDOM % 3 + 1`
    pal=`echo $palabras | cut -d " " -f $n1`
    num=`echo $numeros | cut -d " " -f $n2`
    echo -n "$pal$num"
  done
  echo ""
done
