#!/bin/bash

xfce4-terminal --hide-menubar --hide-borders --hide-toolbar --title=descon --geometry=80x10+15+250 &
wmctrl -r descon -b add,sticky,below 
wmctrl -r descon -b add,skip_pager,skip_taskbar
set -o ignoreeof
