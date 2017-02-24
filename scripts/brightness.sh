#!/bin/bash

bright=`cat /sys/class/backlight/intel_backlight/brightness`
let "bright /= 48,81"
let "bright -= 1"
echo $bright
