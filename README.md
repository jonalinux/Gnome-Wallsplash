
![logowall!](https://user-images.githubusercontent.com/87201918/150200907-a0cff2c1-16d5-4192-8610-bfb0a733ea7d.png)

# How Wallsplash! Works.

An Automated Wallpaper Manager that downloads and your own wallpapers with images taken from the internet, therefore it is necessary to have an active internet connection in order to function. Wallsplash! it is a simple script and very light, however it is able to download images up to 8k UHD, during the quick installation you can choose between some different resolution formats for your desktop, 1080p, 4k, 5k, 8k UHD.

Wallsplash! it is able to work with crontab set to be able to change your background whenever you decide, in fact for example you just need to set the cron job with your terminal editor with the $ cronie -e command, and add the line @hourly ~/.Wallsplash/bin/wbin.sh to get a new wallpaper every hour.

Wallspash! it is written to work in Gnome environment, and it installs and works also on Unity and Cinnamon, it doesn’t work on KDE environment. Wallsplash necessarily needs a notify-send dependency to work so it is suggested to check if the package is already installed by typing, $ notify-send "test" in your terminal, in case you will be returned the missing package error it is mandatory to install it, look for the package for your linux distribution and install it before installing Wallsplash!


![splash](https://user-images.githubusercontent.com/87201918/150272755-5db46f70-b728-4d4e-97e4-cb4f52d29a0f.png)

# Install

1. Wallsplash needs notification-send! the first step is to check if the package is already installed, you can check by opening the terminal and typing $ notify-send "test" if the package is missing and you need to install it before continuing. Install wget for your distro.
2. Allow the install.sh file to run as a program, then right-click and check the appropriate box under file properties.
3. Enter the root password and choose the version that best suits your graphics resolution, including 1080p, 4k, 5k, 8k UHD.
4. Start Wallsplash manually from the programs menu or use a cron job to automate the wallpaper change whenever you want.


# Crontab

type $ cronie -e   and set yuor favorite time for switch the wallpapers
Example: @hourly ~/.Wallsplash/bin/wbin.sh (Change every hour) 
      or */15 * * * * ~/.Wallsplash/bin/wbin.sh (Change every 15 minutes)
      

# what works

Gmome 41.3 - Unity - Cinnamon - xfce4

1. Archlinux ok! Watch video on youtube https://youtu.be/YXTTZbXsrb8
2. Fedora 35 ok! Watch video on youtube https://youtu.be/esDQIIyuho8
3. Ubuntu 21.10 ok! Watch video on youtube https://youtu.be/TJSvIqbrDk4
4. Mint 20.3 ok! Watch video on youtube https://youtu.be/4HtO6onrjzQ
5. Pop-OS 21.10 ok! (need to reboot)    https://youtu.be/XS40gHuoFqc
6. Clear Linux ok! Watch video on youtube https://youtu.be/7UHueXiBVwg
7. xfce4 required after installation and for the first time only, right click to set desktop wallpapers in path ~/.wallspash/data/Wallsplash.jpg

# what is not working

KDE 
