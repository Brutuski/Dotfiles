#!/bin/zsh

#Script to display current time in India and New York in Dunst

Delhi=$(date -d '+ 270 minutes' '+ %H:%M')
dunstify -t 10000 "Time in Delhi" "$Delhi"

NewYork=$(date -d '- 300 minutes' '+ %H:%M')
dunstify -t 10000 "Time in New York" "$NewYork"
