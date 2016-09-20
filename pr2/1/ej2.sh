#!/bin/bash
# ejercicio 2 practica 2(parte 1)

var1=ola
export var1
env | grep ^var1
unset var1
