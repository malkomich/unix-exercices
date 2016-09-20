#!/bin/bash
# ejercicio 3 practica 4(parte 4)

funcion () {
  caracter=`expr $2 + 1`
  echo $1 | cut -c$caracter
}

funcion $1 $2
