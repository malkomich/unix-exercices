#!/bin/bash
# ejercicio 1 practica 1

num_fich=`ls -l|cut -c 5-7|grep "rwx"|wc -l`
echo $num_fich

