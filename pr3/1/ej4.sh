#!/bin/bash
# ejercicio 4 practica 3(parte 1)

# El 1º parametro es el 1� operando
# El 2º parametro es el 2ºoperando
# El 3º parametro es la operacion a realizar
if [ $# != 3 ]
then
  echo "Introduce el primer operador:"; read op1
  echo "Introduce el segundo operador"; read op2
  echo "Introduce la operacion a realizar (+, -, *, /, %)"; read op
  set -- $op1 $op2 $op
fi
result=`expr $1 "$3" $2`
cat << delimitador
  Primer operador: $1
  Segundo operador: $2
  Operacion: $3
  El resultado es: $result
delimitador
