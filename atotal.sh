#!/bin/bash
totalConsumo=0

while [[ "$city" != "Valencia" && "$city" != "Barcelona" && "$city" != "Madrid" ]]; do
    echo "Introduzca nombre ciudad (Valencia, Barcelona, or Madrid):"
    read city
done

while read -r line
do
    consumo=$(echo "$line" | cut -d ' ' -f 4)
    ciudad=$(echo "$line" | cut -d ' ' -f 1)
    if [ "$ciudad" = "$city" ]
    then
        totalConsumo=$((totalConsumo+consumo))
    fi
done < consumos.txt

echo "El consumo de la ciudad de $city es de $totalConsumo"
