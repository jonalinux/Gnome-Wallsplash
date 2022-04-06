#!/bin/bash
# Author Jonathan Sanfilippo

echo ""
echo "Install Wallsplash! by Jonathan Sanfilippo"
echo ""
echo "Wallsplash needs of notify-send for notifiers"
echo "Wallsplash needs of cronie for automatic switch"
echo "after the installation if you want use cronie, you can set your crontab whit @hourly ~/.Wallsplash/bin/wbin.sh"
echo ""

#remove old version
rm -rf ~/.Wallsplash/

#make directories
mkdir -p ~/.Wallsplash/{asset,bin,fix,data}

#I copy the files to the directories
cp asset/background        ~/.Wallsplash/asset
cp asset/icon.svg          ~/.Wallsplash/asset
cp asset/logo.png          ~/.Wallsplash/asset
cp bin/check.sh            ~/.Wallsplash/bin
cp bin/wbin.sh             ~/.Wallsplash/bin
cp fix/fix.sh              ~/.Wallsplash/fix

chmod +x  ~/.Wallsplash/bin/wbin.sh
chmod +x  ~/.Wallsplash/bin/check.sh
chmod +x  ~/.Wallsplash/fix/fix.sh



#set url server
echo "https://4kwallpapers.com/images/wallpapers/*-" >  ~/.Wallsplash/data/url



#I create the link
echo "
[Desktop Entry]
Name=Wallsplash
GenericName=Wallsplash
Exec=/home/$USER/.Wallsplash/bin/wbin.sh
Icon=/home/$USER/.Wallsplash/asset/icon.svg
Type=Application
Categories=GTK;GNOME;System;" > wallsplash.desktop

sudo mv wallsplash.desktop /usr/share/applications/

#set your screen resolution
echo "set your screen resolution"
PS3='Please enter your choice: '
options=("1080p" "4k" "5k" "8k")
select opt in "${options[@]}"
do
    case $opt in
        "1080p")
            echo "1920x1080" > ~/.Wallsplash/data/resolution; exec ~/.Wallsplash/bin/wbin.sh;  exit;;
            
        "4k")
            echo "3480x2160" > ~/.Wallsplash/data/resolution; exec ~/.Wallsplash/bin/wbin.sh;  exit;;
            
        "5k")
            echo "5120x2880" > ~/.Wallsplash/data/resolution; exec ~/.Wallsplash/bin/wbin.sh;  exit;;
            
        "8k")
            echo "7680x4320" > ~/.Wallsplash/data/resolution; exec ~/.Wallsplash/bin/wbin.sh;  exit;;
            
        *) echo "invalid option $REPLY";;
    esac
done

echo "the installation is complete"
exit
