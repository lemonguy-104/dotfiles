#!/usr/bin/bash

#Bar
datt(){
    dat="$(date +%H:%M:%S)"
    echo -e "$dat"
}

#batt(){
#    bat="$(cat /sys/class/power_supply/BAT1/capacity)"
#    echo -e " $bat" #                  :D  
#}

memo(){
    #mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
    mem=`free | awk '/Mem/ {printf "%d/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
    echo -e "Mem $mem"
}

while true; do
    xsetroot -name "| $(memo) | $(datt) | '' |"
    sleep 1s #Update time
done &

#Wallpaper
nitrogen --restore &
