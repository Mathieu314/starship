#!/bin/bash

while true; do
python /root/.conky/scripts/python/gmail.py
checkupdates | wc -l > /tmp/checkupdt.up
OCTOPI=$(curl -s -H "Content-Type: application/json" -H "X-Api-Key: 7884E7B41D83450C9C884467A4549D08" http://192.168.1.32/api/printer | grep Printing | cut -d \" -f 3)
if [ $OCTOPI != '' ]
	then
	echo 1 > /tmp/octoprint.log
else
	echo 0 > /tmp/octoprint.log
fi
sleep 1m
done
