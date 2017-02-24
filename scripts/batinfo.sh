#!/bin/bash


PERC=$(/root/.conky/scripts/battery.sh)
STATUS=$(cat /sys/class/power_supply/BAT1/status)
TIME=$(acpi)

if [[ $TIME == *"Unknown"* ]]
then
	TIME=${TIME:26:8}
fi

if [[ $TIME == *"Charging"* ]]
then
	TIME=${TIME:26:8}	
fi

if [[ $TIME == *"Discharging"* ]]
then
	TIME=${TIME:29:8}	
fi

if [[ $TIME == *"Full"* ]]
then
	TIME=00:00:00
fi

rect=$(($PERC*200/100))
rect=$rect"x5"

(
echo "^i(/root/.conky/icons/14/battery.xbm) Battery Information" # Fist line goes to title
# The following lines go to slave window
echo " Battery : $PERC % "
echo " Status : $STATUS"
echo " Remaining time : $TIME"
echo " ^ro(200x5)^ro()^p(-200)^p()^r($rect)^r()"
) | dzen2 -p -x "590" -y "20" -w "220" -l "4" -sa 'l' -ta 'c'\
  -title-name 'popup_batinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"

