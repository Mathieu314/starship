#!/bin/bash

conky -c /root/.conky/conkys/topbar | lemonbar -a 20 -p -B "#000000" -F "#52B4BA" -f "monospace:size=7" | while read line; do eval "$line"; done
