#!/usr/bin/bash
path=~/.config/polybar/script/pomodoro/appo
var=$(cat $path)
kill_tmr () {
	appo=$(pgrep pomo.sh)
	kill -INT $appo 
}

if [ $var == 1 ]; then
	kill_tmr
	echo 2 > $path
else
	kill_tmr
	echo 0 > $path
fi
if [ $var == 0 ]; then
	echo 1 > $path
fi

