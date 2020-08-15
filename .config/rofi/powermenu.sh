#!/bin/sh

MENU="$(rofi -theme ~/.config/rofi/themes/lighthaus.rasi -sep "|" -dmenu -i -p 'System' -font 'Source Code Pro Medium 12' <<< " Logout| Reboot| Shutdown")"

case "$MENU" in
  *Logout) i3lock -i ~/Documents/Chrome-Downloads/Lockscreen.png -p default -n ;;
  *Reboot) systemctl reboot ;;
  *Shutdown) systemctl poweroff
esac
