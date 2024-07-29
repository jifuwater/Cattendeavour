#!/usr/bin/bash                                                                                          
path=~/.config/polybar/script/timer/appo                                                                
toggle=$(sed '1!d' $path)                                                                               
tmr=$(sed '2!d' $path)

kill_tmr () {                                                                                           
        appo=$(pgrep timer.sh)                                                                    
        kill -INT $appo                                                                                 
}  

if [ $toggle == 0 ] && [ "$1" == "up" ]; then
	echo 0 > $path
	echo $(($tmr + 1)) >> $path
fi

if [ $toggle == 0 ] && [ "$1" == "dw" ] && [ $tmr -gt 0 ]; then
	echo 0 > $path
	echo $(($tmr - 1)) >> $path
fi

if [ "$1" == "start" ] && [ $toggle == 0 ]; then
	echo 1 > $path
	echo $tmr >> $path
fi

if [ "$1" == "start" ] && [ $toggle == 1 ]; then
	kill_tmr
	echo 0 > $path
	echo 0 >> $path
fi
