#!/usr/bin/bash
a=$(cat value)

if [ $a -gt 0 ];then
a=$(expr $a - 1)
rm value
echo $a >> value
echo "󰄉 $(expr $a / 60)m:$(expr $a % 60 )s"
echo ""
echo "#a6e3a1"
sleep 1 & 

pkill -SIGRTMIN+10 i3blocks & 
#rm local
#echo 0 >> local
else
	rm local
	echo 0 >> local
	rm value
	echo 0 >> value
	notify-send "Timer is over"
fi

