#!/bin/bash
param=$1
contador=0
totalConsumo=0
mediaConsumo=0
while read -r line
do
    consumo=$(echo "$line" | cut -d ' ' -f 4)
    ciudad=$(echo "$line" | cut -d ' ' -f 1)
   
    if [ $ciudad == $1 ]
    then
        ((contador++))
        totalConsumo=$((totalConsumo+consumo))
    fi
done < consumos.txt
mediaConsumo=$((totalConsumo/contador))

echo "El consumo medio fue de $mediaConsumo"
