#!/usr/bin/bash
path=~/.config/polybar/script/lofi/active
appo=$(cat $path)
if [ $appo == 0 ]; then
	echo " 󰝛 "
fi

if [ $appo == 1 ]; then
	echo " 󰝚 "
	mpv --no-video --really-quiet 'https://www.youtube.com/watch?v=jfKfPfyJRdk' 

fi

