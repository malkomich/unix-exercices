#!/bin/bash
# ejercicio 4 practica 3(parte 2)

a=0
b=1
i=0
while [ $i -lt $1 ]
do
  echo -e "\n"$a
  sum=`expr $a + $b`
  a=$b
  b=$sum
  i=`expr $i + 1`
done
