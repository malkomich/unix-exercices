#!/bin/bash
# ejercicio 11 practica 2(parte 1)

# el numero minimo de archivos se introduce como argumento

num_archivos=`ls -1 | wc -l`
if [ $num_archivos -ge $1 ]
then
  ls -l
fi
