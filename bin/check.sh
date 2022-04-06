#!/bin/bash
# Author Jonathan Sanfilippo

gsettings get org.gnome.desktop.background picture-uri > ~/.Wallsplash/data/picture-uri

file=~/.Wallsplash/data/wallsplash.jpg 
minimumsize=100
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
    XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -u normal -i ~/.Wallsplash/asset/icon.svg "Wallsplash" "Wallpaper update!" 
else
    exec ~/.Wallsplash/fix/fix.sh;
    
fi



