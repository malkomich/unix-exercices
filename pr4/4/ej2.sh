#!/bin/bash
# ejercicio 2 practica 4(parte 4)

funcion () {
  echo "$*" | tr "_" " "
}

funcion $*
