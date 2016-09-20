#!/bin/bash
# ejercicio 2 practica 3(parte 1)

op1="0"
until [ $op1 -lt 0 ]
do
  echo "Introduce el primer operador:"; read op1
  echo "Introduce el segundo operador"; read op2
  echo "Introduce la operacion a realizar (+, -, *, /, %)"; read op
  result=`expr $op1 "$op" $op2`
  cat << delimitador
   Primer operador: $op1
   Segundo operador: $op2
   Operacion: $op
   El resultado es: $result
delimitador
done
