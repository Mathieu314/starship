#!/bin/bash

EMAIL=$(cat /tmp/gmail.log)
UP=$(cat /tmp/checkupdt.up)
OCTOPRINT=$(cat /tmp/octoprint.log)

TOTAL=$(($EMAIL+$UP+$OCTOPRINT))
echo $TOTAL
