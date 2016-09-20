#!/bin/bash
# ejercicio 1 practica 4(parte 4)

funcion () {
  echo "$*" | tr " " "_"
}

funcion $*
