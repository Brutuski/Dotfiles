#!/bin/zsh

time=$(acpi | grep -o "..:..:..")

charging=$(cat /sys/class/power_supply/BAT1/status)
discharging=$(cat /sys/class/power_supply/BAT1/status)
full=$(acpi | grep -o "Full")

if [ "$charging" = "Charging" ]; then
	echo "  $time"
fi

if [ "$discharging" = "Discharging" ]; then
	echo "  $time"
fi
