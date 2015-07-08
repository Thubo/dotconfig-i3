#!/bin/bash
NUM_DISP=$(xrandr -q | grep -w connected | wc -l)

if [[ $NUM_DISP == 1 ]]; then
  xrandr \
    --output LVDS1 --auto
else

    xrandr \
      --output eDP1 --auto --primary \
      --output HDMI1 --auto --right-of eDP1

fi
