#!/bin/bash
# ejercicio 1 practica 3(parte 2)

ls -l $1 | grep ^- | tr -s " " | cut -d " " -f 5,9
echo ""
echo "Otra forma:"
du -cah $1
