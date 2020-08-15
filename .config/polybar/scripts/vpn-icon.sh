#!/bin/zsh

vpn=$(ifconfig | grep tun0)

if [ "$vpn" = "tun0: flags=4305<UP,POINTOPOINT,RUNNING,NOARP,MULTICAST>  mtu 1500" ]; then
    echo ""
else
    echo ""
fi
