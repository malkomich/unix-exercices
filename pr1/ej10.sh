#!/bin/bash
# ejercicio 10 practica 1

echo "dime 1 directorio"
read dir
echo "aora 1 cadena de caracteres"
read cad
archivos=`ls -l $dir | grep $cad | cut -d " " -f 1`
archivos="$archivos `ls -l $dir | grep $cad | cut -d " " -f 9`"
echo $archivos
exit
