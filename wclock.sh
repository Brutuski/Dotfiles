#!/bin/zsh

echo -n '\e[93mDelhi:        '
Delhi=$(date -d '+ 270 minutes' '+ %H:%M')
echo "$Delhi"

echo -n '\e[93mNew York:     '
NewYork=$(date -d '- 300 minutes' '+ %H:%M')
echo "$NewYork"
