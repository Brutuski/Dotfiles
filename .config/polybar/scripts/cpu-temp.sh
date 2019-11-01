#!/bin/zsh

temp=$(sensors | grep --max-count=1 "Package id 0:" | awk '{print substr($0,17,4)}')
echo  $temp

#sensors | grep Core | awk '{print substr($3, 2, length($3)-5)}' | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//'
