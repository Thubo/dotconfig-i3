#!/bin/bash
NUM_DISP=$(xrandr -q | grep -w connected | wc -l)

if [[ $HOSTNAME == "X230" ]]; then
  if [[ $NUM_DISP == 1 ]]; then
    xrandr \
      --output LVDS1 --auto
  else
    xrandr \
      --output LVDS1 --off \
      --output HDMI2 --auto --rotate normal --primary \
      --output HDMI3 --auto --rotate left --right-of HDMI2
  fi
else
  if [[ $NUM_DISP == 1 ]]; then
    xrandr \
      --output LVDS1 --auto
  else
    xrandr \
      --output eDP1 --auto --primary \
      --output HDMI1 --auto --right-of eDP1
  fi
fi
