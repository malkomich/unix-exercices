#!/bin/bash
# ejercicio 2 practica 3(parte 2)

num_dir=`ls -l $1 | grep ^d | wc -l`
echo "El numero de subdirectorios de dicho directorio es: $num_dir"
