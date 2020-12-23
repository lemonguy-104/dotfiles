#!/usr/bin/bash

#Bar
dat(){
    datt="$(date +%H:%M:%S)"
    echo -e "$datt"
}

bat(){
    batt="$(cat /sys/class/power_supply/BAT1/capacity)"
    echo -e " $batt" #                  :D  
}

memo(){
    #mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
    mem=`free | awk '/Mem/ {printf "%d/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
    echo -e "Mem $mem"
}

while true; do
    xsetroot -name "| $(memo) | $(dat) | $(bat) |"
    sleep 1s #Update time
done &

#Wallpaper
nitrogen --restore &
