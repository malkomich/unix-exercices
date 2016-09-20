#!/bin/bash
# ejercicio 13 practica 3(parte 2)
# version con piramide rellena

salida=1
if [ $# != 1 ]
then
  echo "Error: No has introducido UN parametro"
else
  if [ $1 -lt 0 ]
  then
    echo "Error: El argumento no puede ser negativo"
  else
    if [ `expr $1 % 2` != 1 ]
    then
      echo "Error: Debes introducir un parametro impar"
    else
      salida=0
      x=`expr $1 - 1`
      for i in `seq $1`
      do
        for j in `seq $x`
	do
	  echo -n " "
	done
        n=`expr 0 + $i`
        until [ $n == 0 ]
        do
          echo -n "*"
	  echo -n " "
	  n=`expr $n - 1`
	done
	x=`expr $x - 1`
	echo ""
      done
    fi
  fi
fi
exit $salida
