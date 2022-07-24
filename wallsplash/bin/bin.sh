#!/bin/sh
# wallsplash change wallpapers for gnome.
# Author Jonathan Sanfilippo 
# Date Fri Jul 24 2022
# Copyright (C) 2022 Jonathan Sanfilippo <jonathansanfilippo.uk@gmail.com>
#gsettings set org.gnome.desktop.background picture-uri file:///

while  true;  do 
GENERATESERIAL=$((1 + RANDOM % 8000)); 
URL=$(cat ~/.local/share/wallsplash/data/url)
RESOLUTION=$(cat ~/.local/share/wallsplash/data/resolution)
SERIAL=$(cat ~/.local/share/wallsplash/data/random)
FILE="~/.local/share/wallsplash/data/image.jpg "
IMAGE=$( wget -O ~/.local/share/wallsplash/data/image.jpg  "$URL""$RESOLUTION"-"$SERIAL"".jpg");
MINSIZE=100
SIZE=$(wc -c <"$FILE")

get_w() { echo "$GENERATESERIAL" > ~/.local/share/wallsplash/data/random;
$IMAGE;
if [ $SIZE -ge $MINSIZE ]; then
cp -r  ~/.local/share/wallsplash/data/image.jpg   ~/.local/share/backgrounds/wallsplash/image.jpg 
      else
    echo "$GENERATESERIAL" > ~/.local/share/wallsplash/data/random;
    $IMAGE;
    cp -r  ~/.local/share/wallsplash/data/image.jpg   ~/.local/share/backgrounds/wallsplash/image.jpg 
    fi
    }

get_w
 sleep 900
done


