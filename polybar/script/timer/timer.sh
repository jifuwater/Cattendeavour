#!/usr/bin/bash
path=~/.config/polybar/script/timer/appo
toggle=$(sed '1!d' $path)
tmr=$(sed '2!d' $path)
sec=$(($tmr * 60))

if [ $toggle == 0 ]; then
if [ $tmr == 0 ]; then
        echo " 󰔛 "
else
	echo " 󰔛 $tmr "
fi
fi

if [ $toggle == 1 ]; then
for (( i=$sec; i>0; i--)); do
  sleep 1 &
  min=$(($i / 60)) 
  if [ $min == 0 ]; then
  echo " 󰔟 $i s "
  else 
  echo " 󰔟 $min m "
  fi 
  wait
done
notify-send "Timer end"
echo 0 > $path
echo 0 >> $path
fi
