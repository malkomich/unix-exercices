#!/bin/bash
# ejercicio 9 practica 3(parte 2)

salida=0
long=`expr length $1`
cont=1
cont2=$long
for i in `seq $long`
do
  l1=`echo $1 | cut -c$cont`
  l2=`echo $1 | cut -c$cont2`
  if [ $l1 != $l2 ]
  then
    salida=1
  fi
    cont=`expr $cont + 1`
    cont2=`expr $cont2 - 1`
done
if [ $salida == 0 ]
then
  echo "es palindromo"
else
  echo "no es palindromo"
fi
exit $salida
