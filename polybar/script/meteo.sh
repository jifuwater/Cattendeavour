#!/usr/bin/bash
meteo=$(curl -s  wttr.in/Sedriano?format=1)
first="${meteo%% *}"
if [ "$meteo" == "" ] || [ "$first" == "Unknown" ]; then
	echo "  Off" 

else
	echo $meteo
fi
