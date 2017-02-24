#!/bin/bash


T=$(cat /tmp/conkytoggle)
HOME='/root/'

if [[ $T == "0" ]]
then
	Y=440
(
echo "^ca(1,lxterminal --working-directory=$HOME)^i(/root/.conky/icons/14/root.xbm) Terminal^ca() | ^ca(1,pcmanfm -n $HOME)^i(/root/.conky/icons/14/files.xbm) Files^ca()" # Fist line goes to title
) | dzen2 -p -x "350" -y "0" -w "$Y" -l "0" -sa 'l' -ta 'c'\
  -title-name 'popup_launchbar' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"
fi

if [[ $T == "1" ]]
then
	Y=90
(
echo "^ca(1,lxterminal --working-directory=$HOME)^i(/root/.conky/icons/14/root.xbm) Terminal^ca()" # Fist line goes to title
) | dzen2 -p -x "350" -y "0" -w "$Y" -l "0" -sa 'l' -ta 'c'\
  -title-name 'popup_launchbar' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-8" -bg "#52B4B8" -fg "#040C0F"
fi
