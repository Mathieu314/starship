#!/bin/bash


EMAIL=$(cat /tmp/gmail.log)
UPDATES=$(cat /tmp/checkupdt.up)
OCTOPRINT=$(cat /tmp/octoprint.log)

TOTAL=$(/root/.conky/scripts/totalNotif.sh)
PRINTER=$(/root/.conky/scripts/octoprint.sh)

(
echo "^i(/root/.conky/icons/14/mail.xbm) Notifications ($TOTAL)" # Fist line goes to title
# The following lines go to slave window
echo ""
echo " EMAIL ^r(143x2)^r()"
echo " $EMAIL new(s)"
echo ""
echo " UPDATES ^r(130x2)^r()"
echo " $UPDATES available"
echo ""
if [ $OCTOPRINT != 1 ]
	then
	echo " OCTOPRINT ^r(118x2)^r()"
else
	echo " OCTOPRINT (1) ^r(93x2)^r()"
fi
echo " $PRINTER"
) | dzen2 -p -x "1180" -y "20" -w "190" -l "56" -sa 'l' -ta 'c'\
  -title-name 'popup_audioinfo' -e 'onstart=uncollapse;button1=exit;button3=exit' -fn "dejavusansmono-7.867" -bg "#52B4B8" -fg "#040C0F"

