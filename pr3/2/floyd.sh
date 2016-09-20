# dibuja 1 triangulo con el comando seq
# el tamaño del triangulo se pasa como argumento
if [ $# -ne 1 ]
then
  echo "Error ... debe introducir 1 argumento"
else
  # Validar si es 1 numero positivo
  for i in `seq $1`
  do
    for j in `seq $1`
    do
      echo -n "* "
    done
    echo " "
  done
fi
exit 0
