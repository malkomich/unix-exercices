#!/bin/bash
# ejercicio 4 practica 4(parte 4)

permisos () {
  case $1 in
    u) var1="
    ;;
    g) 
    ;;
    o) 
    ;;
    a) 
    ;;
    *) echo "el primer argumento está mal"
    ;;
  esac
  case $2 in
    
  ll $3 | grep $ | tr -s " " | cut -d " " -f 1,9
