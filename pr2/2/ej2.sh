#!/bin/bash
# ejercicio 2 practica 2(parte 2)

salida=0
result=`expr $1 + $2`
if [ $? == 2 ]
then
  echo "Error: debes introducir DOS variables NUMERICAS"
  salida=1
else
  result=`expr $1 + $2`
  echo "*El resultado de la suma es: $result"
  result=`expr $1 - $2`
  echo "*El resultado de la resta es: $result"
  result=`expr $1 \* $2`
  echo "*El resultado de la multiplicacion es: $result"
  if [ $2 == 0 ]
  then
    echo "*No se puede dividir por cero"
  else
    result=`expr $1 / $2`
    result1=`expr $1 % $2`
    echo -e "*El resultado de la division es: \n  -Cociente: $result \n  -Resto: $result1"
  fi
fi
exit $salida
