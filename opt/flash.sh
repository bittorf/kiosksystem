#!/bin/bash

export DISPLAY=:0.0

# wait for display manager
sleep 3

# disable DPMS (Energy Star) features
xset -dpms
# screensaver off
xset s off
# don't blank the video device
xset s noblank

# xrandr --output HDMI-1 -s 1920x1200 --rotation inverted


# load global functions
. /opt/tmp/kiosksystem/opt/global_functions

# read scriptname to set servicename
SERVICE="${0##*/}" 
SERVICE=${SERVICE%.*}

kiosklog "$SERVICE" "$SERVICE script started $0"

exit_if_disabled "$SERVICE"

FILE=/home/kiosk/SH_Timeline/bin-release/SH_Timeline.swf



while true; do 
  kiosklog "$SERVICE" "$SERVICE started"
  /home/kiosk/flashplayer "$FILE" 
  kiosklog "$SERVICE" "$SERVICE crashed"
  sleep 6 # to get time to open terminal (ctrl-alt t)
  exit_if_disabled "$SERVICE"
done