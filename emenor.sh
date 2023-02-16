#!/bin/bash
mediaVal=$(./cmedia.sh 'Valencia')
echo "El consumo medio en Valencia fue de $mediaVal"
mediaMad=$(./cmedia.sh 'Madrid')
echo "El consumo medio en Madrid fue de $mediaMad"
mediaBarc=$(./cmedia.sh 'Barcelona')
echo "El consumo medio en Barcelona fue de $mediaBarc"