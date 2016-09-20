#!/bin/bash
# ejercicio 4 practica 2(parte 2)

var1=`expr $1 + 0`
c1=$?
var2=`expr $2 + 0`
c2=$?
if [ $c1 == 2 -a $c2 == 2 ]
then
  cad1=$1
  cad2=$2
  cad3=$cad1$cad2
  echo "concatenacion de cadenas: $cad3"
  cad3=${cad1:3}
  echo "extraccion de subcadenas: $cad3"
  cad3=${cad2:2:4}
  echo "extraccion de subcadenas: $cad3"
  cad3=`expr length $cad2`
  echo "longitud de la cadena2: $cad3"
  cad3=`expr index $cad1 i`
  echo "posicion de la cadena1 donde esta el caracter i: $cad3"
  test $cad1 == $cad2
  if [ $? -eq 0 ]
  then
    echo "las cadenas son iguales"
  else
    echo "las cadenas son distintas"
  fi
else
  echo "no son alfanumericos los argumentos"
fi
