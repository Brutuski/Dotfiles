#!/bin/bash

# Please enter the corrent BAT<num>
status=$(cat /sys/class/power_supply/BAT1/status)
level=$(cat /sys/class/power_supply/BAT1/capacity)

if [ -d /sys/class/power_supply/BAT1 ];
then
    if [ "$status"  = "Discharging" ];then
         printf "🔋%.0f%%" $level
    elif [ "$status"  = "Charging" ];then
         printf "⚡%.0f%%" $level
    else
         printf "🔌%.0f%%" $level
    fi
else
    echo ""
fi
