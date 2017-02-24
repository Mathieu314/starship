#!/bin/bash

desktop=$(xprop -root _NET_CURRENT_DESKTOP)
desktop=$(echo -n ${desktop:32})
desktop=$(( $desktop + 1 ))
echo $desktop
