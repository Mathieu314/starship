#!/bin/bash


CAL=$(cal -m)

(
echo "^i(/root/.conky/icons/14/calendar.xbm) Calendar" # Fist line goes to title
# The following lines go to slave window
echo "$CAL"
) | dzen2 -p -x "1040" -y "20" -w "150" -l "8" -sa 'l' -ta 'c'\
  -title-name 'popup_calendar' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"

