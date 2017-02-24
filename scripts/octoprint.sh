#!/bin/bash

PRINTER=$(curl -m 0.5 -s -H "Content-Type: application/json" -H "X-Api-Key: 7884E7B41D83450C9C884467A4549D08" http://192.168.1.32/api/printer)
JOB=$(curl -m 0.5 -s -H "Content-Type: application/json" -H "X-Api-Key: 7884E7B41D83450C9C884467A4549D08" http://192.168.1.32/api/job)
TEMP=$(echo $PRINTER | cut -d : -f 14 | cut -d , -f 1)
TARG=$(echo $PRINTER | cut -d : -f 16 | cut -d } -f 1)
STATE=$(echo $PRINTER | cut -d \" -f 22)
COND=$(echo $STATE | grep "Op")
COND2=$(echo $STATE | grep "Printing")
PROGRESS=$(echo $JOB | cut -d \" -f 39 | cut -d . -f 1)
FILE=$(echo $JOB | cut -d \" -f 22)

if [ $COND != '' ]
	then
	echo "Operational"
	echo " Temperature" : $TEMP °C
	echo 0 > /tmp/octoprint.log
elif [ $COND2 != '' ]	
	then
	echo "Printing ..."
	echo " File : " $FILE
	echo " Temperature" : $TEMP / $TARG °C
	echo " Progress" $PROGRESS %
	echo 1 > /tmp/octoprint.log
	echo ${PROGRESS:2} > /tmp/progress.log
else
	echo "Server not available"
	echo 0 > /tmp/octoprint.log
fi
