#!/usr/bin/bash
meteo=$(curl wttr.in/Sedriano?format=1| xargs echo)
if [ "$meteo" == "" ]; then
	echo "  Off" 

else
	echo $meteo
fi

