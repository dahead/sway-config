#!/usr/bin/bash
#Disable laptop display when lid closes and vice versa.
if grep -q open /proc/acpi/button/lid/LID/state; then
    swaymsg output e-DP1 enable
else
    swaymsg output e-DP1 disable
fi