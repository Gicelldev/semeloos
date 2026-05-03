#!/bin/bash
# SemeloOS - .xinitrc
# Initializes the X session and launches Openbox

# Set display settings
export DISPLAY=:0
xrandr --auto

# Disable screen blanking
xset s off
xset -dpms
xset s noblank

# NO picom - causes black screen issues in VMware
# Launch Openbox directly
exec openbox-session
