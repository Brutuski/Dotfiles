#!/bin/zsh

time=$(acpi | grep -o "..:..:..")

charging=$(acpi | grep -o "Charging")
discharging=$(acpi | grep -o "Discharging")
full=$(acpi | grep -o "Full")

if [ "$charging" = "Charging" ]; then
	echo " ϟ Charging |"
fi

if [ "$discharging" = "Discharging" ]; then 
	echo " ↓ $time Remaining |"
fi

if [ "$full" = "Full" ]; then 
	echo " ● Plugged In |"
fi
