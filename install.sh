#!/bin/sh
# wallsplash change wallpapers for gnome.
# Author Jonathan Sanfilippo 
# Date Fri Jul 24 2022
# Copyright (C) 2022 Jonathan Sanfilippo <jonathansanfilippo.uk@gmail.com>


echo ""
echo "Install Wallsplash!"
echo ""

mkdir -p ~/local/share/backgrounds
mkdir -p ~/.local/share/backgrounds/wallsplash/
mkdir -p ~/.config/autostart/
mkdir -p ~/.local/share/gnome-background-properties/


if ! [ -x "$(command -v wget)" ]; then
  echo -e ${On_Red}Error: wget is not installed.${Color_Off} >&2
  echo -e ${UBlue}install wget..${Color_Off}
  sudo pacman -S wget;
  echo -e  ${UGreen}wget.. installed!${Color_Off};
  else
  echo -e  ${UGreen}wget.. installed!${Color_Off}
fi

cp -r  wallsplash ~/.local/share/
chmod +x  ~/.local/share/wallsplash/bin/bin.sh

#set url server
echo "https://4kwallpapers.com/images/wallpapers/*-" >  ~/.local/share/wallsplash/data/url

#I create the link
echo "
[Desktop Entry]
Name=Wallsplash
GenericName=Wallsplash
Exec=/home/$USER/.local/share/wallsplash/bin/bin.sh
Type=Application
Categories=GTK;GNOME;System;" > wallsplash.desktop

#cp -r  wallsplash.desktop ~/.local/share/applications/
cp -r  wallsplash.desktop ~/.config/autostart/

#create xml
echo '<?xml version="1.0"?>
<!DOCTYPE wallpapers SYSTEM "gnome-wp-list.dtd">
<wallpapers>
  <wallpaper deleted="false">
    <name>Wallsplash</name>
    <filename>/home/'$USER'/.local/share/backgrounds/wallsplash/image.jpg</filename>
    <options>zoom</options>
    <shade_type>solid</shade_type>
    <pcolor>#3465a4</pcolor>
    <scolor>#000000</scolor>
    <artist>4kwallpapers</artist>
  </wallpaper>
</wallpapers>' >  ~/.local/share/gnome-background-properties/wallsplash.xml
sudo cp -r  ~/.local/share/gnome-background-properties/wallsplash.xml /user/share/cinnamon-background-properties


#set your screen resolution
echo "set your screen resolution"
PS3='Please enter your choice: '
options=("1080p" "4k" "5k" "8k")
select opt in "${options[@]}"
do
    case $opt in
        "1080p")
            echo "1920x1080" > ~/.local/share/wallsplash/data/resolution;  echo "the installation is complete"; exit;;
            
        "4k")
            echo "3480x2160" > ~/.local/share/wallsplash/data/resolution;  echo "the installation is complete"; exit;;
            
        "5k")
            echo "5120x2880" > ~/.local/share/wallsplash/data/resolution;  echo "the installation is complete"; exit;;
            
        "8k")
            echo "7680x4320" > ~/.local/share/wallsplash/data/resolution; echo "the installation is complete"; exit;;
            
        *) echo "invalid option $REPLY";;
    esac
done


exit
