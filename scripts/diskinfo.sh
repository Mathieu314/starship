#!/bin/bash


PERC=$(df / --output=pcent | grep -e [[:digit:]] | sed s/%//)
rect=$(($PERC*100/100))
rect=$rect"x5"

(
echo "^i(/root/.conky/icons/14/disk.xbm) Disk Space" # Fist line goes to title
# The following lines go to slave window
echo " Disk / : $PERC % "
echo " ^ro(100x5)^ro()^p(-100)^p()^r($rect)^r()"
) | dzen2 -p -x "195" -y "20" -w "120" -l "2" -sa 'l' -ta 'c'\
  -title-name 'popup_diskinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"

