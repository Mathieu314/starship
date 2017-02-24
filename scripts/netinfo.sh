#!/bin/bash

#A simple popup showing system information

(
	echo "^i(/root/.conky/icons/14/wifi.xbm) Network " # Fist line goes to title
	# The following lines go to slave window
	echo Download speed
	conky -c /root/.conky/conkys/statusbar/network
	sleep 1
) | dzen2 -p -x "815" -y "20" -w "220" -l "4" -sa 'l' -ta 'c'\
  -title-name 'popup_netinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F" &

