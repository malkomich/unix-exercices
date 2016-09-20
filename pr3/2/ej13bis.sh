#!/bin/bash
# ejercicio 13 practica 3(parte 2)
# version con piramide hueca

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
	case $i in
        1) echo -n "*"
	;;
	$1) for k in `seq $1`
	do
	  echo -n "*"
	  echo -n " "
	done
	;;
	*) echo -n "*"
	y=`expr $i - 1`
	y=`expr $y "*" 2 - 1`
	for k in `seq $y`
	do
	  echo -n " "
	done
        echo -n "*"
	esac
	x=`expr $x - 1`
	echo ""
      done
    fi
  fi
fi
exit $salida
