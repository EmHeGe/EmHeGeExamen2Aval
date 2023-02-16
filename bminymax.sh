#!/bin/bash
maxConsumo=0
maxMes=''
minConsumo=9999
minMes=''
maxCity=''
minCity=''
contador=0
while read -r line
do
    if [ $contador -gt 0 ]
    then
        mes=$(echo "$line" | cut -d ' ' -f 2)
        consumo=$(echo "$line" | cut -d ' ' -f 4)
        ciudad=$(echo "$line" | cut -d ' ' -f 1)
        if [ "$((consumo))" -ge "$maxConsumo" ]
        then
            maxConsumo=$((consumo))
            maxCity=$ciudad
        fi
        if [ "$((consumo))" -le "$minConsumo" ]
        then
            minConsumo=$((consumo))
            minCity=$ciudad
        fi
    fi
    ((contador++))
done < consumos.txt

echo "El consumo máximo fue de $maxConsumo en el mes de $maxMes en la ciudad de $maxCity"
echo "El consumo mínimo fue de $minConsumo en el mes de $minMes en la ciudad de $minCity"

