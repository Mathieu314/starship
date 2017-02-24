#!/bin/bash

conky -qc /root/.conky/conkys/conky_main
conky -qc /root/.conky/conkys/image_world
conky -qc /root/.conky/conkys/world
conky -qc /root/.conky/conkys/image_ship
conky -qc /root/.conky/conkys/ship
conky -qc /root/.conky/conkys/cpu
conky -qc /root/.conky/conkys/crypto
conky -qc /root/.conky/conkys/octoprint
conky -qc /root/.conky/conkys/rss
conky -qc /root/.conky/conkys/cal
#conky -qc /root/.conky/conkys/mail
#conky -qc /root/.conky/conkys/updates
conky -qc /root/.conky/conkys/processes
conky -qc /root/.conky/conkys/network
conky -qc /root/.conky/conkys/log
echo 1 > /tmp/conkytoggle
bash /root/.conky/scripts/launchBar.sh &
bash /root/.conky/scripts/click.sh &
bash /root/.conky/scripts/checkNotif.sh &
