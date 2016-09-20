#!/bin/bash
# ejercicio 3 practica 3(parte 1)

# El 1º parametro es el 1� operando
# El 2º parametro es el 2ºoperando
# El 3º parametro es la operacion a realizar
result=`expr $1 "$3" $2`
cat << delimitador
  Primer operador: $1
  Segundo operador: $2
  Operacion: $3
  El resultado es: $result
delimitador
