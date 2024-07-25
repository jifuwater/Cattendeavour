#!/bin/bash

level=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1 )

unit=10
vite=$(($level/unit))
mute=$(pactl get-sink-mute @DEFAULT_SINK@)

if [ "$mute" == "Mute: sì" ] || [ "$mute" == "Mute: yes" ]; then
	echo " "
	echo ""
	echo "#cdd6f4"
else
if [ $vite == 10 ]; then
	echo " "
	echo ""
	echo "#f38ba8"
fi

if [ $vite == 9 ]; then
	echo " "
	echo ""
	echo "#f38ba8"
fi
if [ $vite == 8 ]; then
	echo " "
	echo ""
	echo "#f38ba8"
fi
if [ $vite == 7 ]; then
	echo " "
	echo ""
	echo "#f38ba8"
fi
if [ $vite == 6 ]; then
	echo " "
	echo ""
	echo "#fab387"
fi
if [ $vite == 5 ]; then
	echo " "
	echo ""
	echo "#fab387"
fi
if [ $vite == 4 ]; then
	echo " "
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 3 ]; then
	echo " "
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 2 ]; then
	echo " "
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 1 ]; then
	echo " "
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 0 ] && [ $level != 0 ]; then
	echo " "
	echo ""
	echo "#a6e3a1"
fi
if [ $vite == 0 ] && [ $level == 0 ]; then
	echo " "
	echo ""
	echo "#cdd6f4"
fi


fi

