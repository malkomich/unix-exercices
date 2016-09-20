#!/bin/bash
# ejercicio 5 practica 3(parte 2)

factorial=1
for i in `seq $1`
do
 factorial=`expr $factorial \* $i`
done
echo $factorial
