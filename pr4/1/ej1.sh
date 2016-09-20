#!/bin/bash
# ejercicio 1 practica 4(parte 1)

orden=`sort  << DELIM
England
Spain
France
Italy


DELIM`

echo "Paises ordenados:"
for pais in $orden
do
echo $pais
done
echo " "

inver=`sort -r << INVER

Spain
Italy
France
England

INVER`

echo "Paises inversos:"
for inverso in $inver
do
echo $inverso
done
echo " "

echo "Por tamano del nombre:"
sort -n  << GT
England 7
Spain 5
Italy 5
France 6

GT
echo " "

echo "Tamano inverso:"
sort -nr << JU
Spain 5
England 7
France 6
Italy 5

JU

echo " "

total=`wc -w << AM
England Suiza
Spain
France
Italy
USA
Brasil
AM`

echo "El numero total de paises es: "$total" "
echo " "
exit 0
