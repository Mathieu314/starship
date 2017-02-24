#!/bin/bash

killall xdotool
#xdotool search --class spWidget search --name ship behave %@ mouse-click getmouselocation --shell exec lxterminal -e "vim /root/.conky/conkys/ship" > /dev/null &
xdotool search --class spWidget search --name satelit behave %@ mouse-click getmouselocation --shell exec satelit eu &
#xdotool search --class spWidget search --name buttonS behave %@ mouse-click getmouselocation --shell exec /root/.conky/conkys/newShip.sh &
#xdotool search --class spWidget search --name buttonP behave %@ mouse-click getmouselocation --shell exec /root/.conky/conkys/newPlanet.sh &
#xdotool search --class spWidget search --name world behave %@ mouse-click getmouselocation --shell exec lxterminal -e "vim /root/.conky/conkys/world" &
#xdotool search --class spWidget search --name network behave %@ mouse-click getmouselocation --shell exec gnome-control-center network &
#xdotool search --class spWidget search --name updates behave %@ mouse-click getmouselocation --shell exec lxterminal -e "pacman -Syu" &
#xdotool search --class spWidget search --name htop behave %@ mouse-click getmouselocation --shell exec lxterminal -e "htop" 
