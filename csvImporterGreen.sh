#!/bin/bash

for entry in "ruta"*".csv"
do
  echo "_________________________________________________"

if mongoimport --type csv -d BASE_DE_DATOS -c TABLA  $entry --fields COLUMNAS
  then
        echo ">"
        mv $entry RUTA_A_MOVER_EL_ARCHIVO_AL_FINALIZAR
  else
        echo "Error File: $entry"
  fi
done

