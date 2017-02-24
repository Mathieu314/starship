#!/bin/bash

#A simple popup showing system information

BRIGHTNESS=$(/root/.conky/scripts/brightness.sh)
Y=180

size1=$(($Y - 10))
size=$size1"x5"

rect=$(($BRIGHTNESS*$size1/100))
rect=$rect"x5"
(
echo "^i(/root/.conky/icons/14/light.xbm) Brightness Information" # Fist line goes to title
# The following lines go to slave window
echo " Brightness: $BRIGHTNESS % "
echo " ^ro($size)^ro()^p(-$size1)^p()^r($rect)|^r()"
) | dzen2 -u -p -x "450" -y "20" -w "$Y" -l "2" -sa 'l' -ta 'c'\
  -title-name 'popup_brightnessinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"

