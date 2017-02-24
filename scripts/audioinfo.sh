#!/bin/bash


PERC=$(amixer -M get Master | grep -om 1 '[[:digit:]]*%' | sed s/%//)
Y=150

size1=$(($Y - 10))
size=$size1"x5"

rect=$(($PERC*$size1/100))
rect=$rect"x5"

(
echo "^i(/root/.conky/icons/14/audio.xbm) Audio Information" # Fist line goes to title
# The following lines go to slave window
echo " ^ro($size)^ro()^p(-$size1)^p()^r($rect)|^r()"
) | dzen2 -p -x "720" -y "20" -w "$Y" -l "1" -sa 'l' -ta 'c'\
  -title-name 'popup_audioinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"

