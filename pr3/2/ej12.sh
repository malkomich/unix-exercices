#!/bin/bash
# ejercicio 12 practica 3(parte 2)

salida=0
if [ $# -ge 2 ]
then
  if [ -d $1 ]
  then
    dir=$1
    shift
    for i in `seq $#`
    do
      if [ -f $1 ]
      then
        cat $1 >> $dir/todos.txt
      else
        echo "$1 no es un fichero"
        salida=1
      fi
      shift
    done
  else
    echo "$1 no es un directorio"
    salida=2
  fi
else
  echo "Error: MINIMO 2 ARGUMENTOS"
  salida=3
fi
if [ $salida == 0 ]
then
  echo "Todo ha ido bien ;)"
fi
exit $salida
#############################################################################
# La salida sera:                                                           #
#--0 si no ha habido fallos                                                 #
#--1 si alguno de los argumentos dados tras el directorio no era un fichero #
#--2 si el primer argumento dado no era un directorio                       #
#--3 si se han introducido menos de 2 argumentos                            #
#############################################################################
