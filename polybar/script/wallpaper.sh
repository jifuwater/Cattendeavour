#!/usr/bin/bash
w_path=~/.config/wallpaper/
c_path=~/.config/wallpaper/current
config=~/.config/
current=$(cat $c_path)

new=$((current+1))
if [ $new == 13 ]; then
	new=0
fi

rm "${config}sfondo.jpg"
cp "$w_path$new.jpg" $config
mv "$config$new.jpg" "${config}sfondo.jpg"
sed -i '1d' $c_path 
echo $new >> $c_path
feh --bg-fill ~/.config/sfondo.jpg
