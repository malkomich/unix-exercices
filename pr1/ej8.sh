#!bin/bash
# ejercicio 8 practica 1

echo "escribe tu nombre de usuario"
read usuario
fecha=`ls -l $HOME/.. | grep $usuario | cut -c 35-41`
numfich=`ls -l $HOME | grep -v ^d | wc -l`
numdir=`ls -l $HOME | grep ^d | wc -l`
echo " La fecha de creacion es $fecha"
echo " El numero de ficheros es $numfich"
echo " El numero de subdirectorios es $numdir"
exit
