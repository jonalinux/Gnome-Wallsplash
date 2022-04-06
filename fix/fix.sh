#!/bin/bash
# Author Jonathan Sanfilippo



cp ~/.Wallsplash/asset/background  ~/.Wallsplash/data/
mv ~/.Wallsplash/data/background ~/.Wallsplash/data/wallsplash.jpg 
XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -u normal -i ~/.Wallsplash/asset/icon.svg "Wallsplash" "I couldn't download the Wallpaper, I set the temporary one :(" 
