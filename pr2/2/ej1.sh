#!/bin/bash
# ejercicio 1 practica 2(parte 2)

echo "Introduce dos variables numericas"
read var1 var2
salida=0
result=`expr $var1 + $var2`
if [ $? == 2 ]
then
  echo "Error: debes introducir DOS variables NUMERICAS"
  salida=1
else
  result=`expr $var1 + $var2`
  echo "*El resultado de la suma es: $result"
  result=`expr $var1 - $var2`
  echo "*El resultado de la resta es: $result"
  result=`expr $var1 \* $var2`
  echo "*El resultado de la multiplicacion es: $result"
  if [ $var2 == 0 ]
  then
    echo "*No se puede dividir por cero"
  else
    result=`expr $var1 / $var2`
    result1=`expr $var1 % $var2`
    echo -e "*El resultado de la division es: \n  -Cociente: $result \n  -Resto: $result1"
  fi
fi
exit $salida
