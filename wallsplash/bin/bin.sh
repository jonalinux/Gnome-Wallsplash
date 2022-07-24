#!/bin/sh
# wallsplash change wallpapers for gnome.
# Author Jonathan Sanfilippo 
# Date Fri Jul 24 2022
# Copyright (C) 2022 Jonathan Sanfilippo <jonathansanfilippo.uk@gmail.com>
#gsettings set org.gnome.desktop.background picture-uri file:///

GENERATESERIAL=$((1 + RANDOM % 10000))
FIX=$((1 + RANDOM % 7200))
URL=$(cat ~/.local/share/wallsplash/data/url)
RESOLUTION=$(cat ~/.local/share/wallsplash/data/resolution)
SERIAL=$(cat ~/.local/share/wallsplash/data/random)


get_img () { IMAGE=$( wget -O ~/.local/share/wallsplash/data/image.jpg  "$URL""$RESOLUTION"-"$SERIAL"".jpg"); }

while true; do
get_img
echo "$GENERATESERIAL" > ~/.local/share/wallsplash/data/random;
$IMAGE

file=~/.local/share/wallsplash/data/image.jpg 
minimumsize=100
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
       cp -r  ~/.local/share/wallsplash/data/image.jpg   ~/.local/share/backgrounds/wallsplash/image.jpg 
      
else
    echo "$FIX" > ~/.local/share/wallsplash/data/random;
     $IMAGE;
     cp -r  ~/.local/share/wallsplash/data/image.jpg    ~/.local/share/backgrounds/wallsplash/image.jpg
    
fi

sleep 900
get_img
done
