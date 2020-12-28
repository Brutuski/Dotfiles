#!/bin/bash

if [ -d /sys/class/power_supply/BAT1 ];
then
    now=`cat /sys/class/power_supply/BAT1/capacity`
    printf "Bat: %.0f%%" $now
else
    echo ""
fi
