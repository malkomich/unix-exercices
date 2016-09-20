#!/bin/bash
# ejercicio 11 practica 1

echo "dime 1 directorio"
read dir
echo "aora 1 cadena de caracteres"
read cad
archivos=`ls -l $dir | grep $cad | cut -d " " -f 1`
echo "1ºvalor devuelt: $?"
archivos="$archivos `ls -l $dir | grep $cad | cut -d " " -f 9`"
echo "2ºvalor devuelto: $?"
echo $archivos
exit
