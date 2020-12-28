#!/bin/bash

vpn=$(ifconfig | grep tun0)
ic_pos=''
ic_neg=""

if [ "$vpn" = "tun0: flags=4305<UP,POINTOPOINT,RUNNING,NOARP,MULTICAST>  mtu 1500" ]; then
    echo "PIA: $ic_pos"
else
    echo "PIA: $ic_neg"
fi
