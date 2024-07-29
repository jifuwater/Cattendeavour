#!/usr/bin/bash                                                                                         
path=~/.config/polybar/script/lofi/active                                                               
appo=$(cat $path)

kill_lofi () {                                                                                          
        appo=$(pgrep lofi.sh)                                                                          
        appo2=$(pgrep mpv)   
	kill -INT $appo                                                                                 
	kill -INT $appo2
}

if [ $appo == 0 ]; then
	echo 1 > $path
fi
if [ $appo == 1 ]; then
	echo 0 > $path
	kill_lofi
fi

