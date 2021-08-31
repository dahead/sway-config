#!/bin/bash

# Show sway display output modes
# swaymsg -t get_outputs

# Integrated Display
SCR_MAIN="eDP-1"

# External monitor list
SCR_AUX1="DP-1"
SCR_AUX2="DP-2"
SCR_AUX3="DP-3"
SCR_AUX4="DP-4"
SCR_AUX5="DP-5"
SCR_AUX6="DP-6"
SCR_AUX8="DP-8"

# resolution list
RES_STD="1920x1050"
RES_MID="1920x1080"
RES_MAX="2560x1440"

# Use HDMI with LG
# HiDPI Mode
swaymsg output $SCR_AUX3 scale 1
swaymsg output $SCR_AUX3 enable
swaymsg output $SCR_AUX3 res $RES_MID

# shutdown laptop display
swaymsg output $SCR_MAIN disable