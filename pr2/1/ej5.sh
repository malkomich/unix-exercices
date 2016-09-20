#!/bin/bash
# ejercicio 5 practica 2(parte 1)

maximo=`ls -1 /home/infog | wc -l`
echo "numero maximo: $maximo"
conectados=`who | wc -l`
echo "usuarios conectados: $conectados"
