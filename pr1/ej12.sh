#!/bin/bash
# ejercicio 12 practica 1

echo "Introduce un numero del 1 al 3 indicando la modificacion del ejercicio que deseas ejecutar"
read option
case $option in
  1) exit 0
  ;;
  2) exit 15
  ;;
  3) exit -200
# salida=56
  ;;
  *) echo "error"
     exit 1
  ;;
esac
