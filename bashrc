# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Alias

alias pls="sudo"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias reboot="sudo reboot"
alias up-dg="update && upgrade"
alias up-dg-r="update && upgrade && reboot"
alias tlauncher="sudo java -jar /home/manu/Juegos/Minecraft/TLauncher/TLauncher-2.72.jar"
alias py="python3"
alias python="python3"
alias bpy="bpython"
alias xrandrOff="xrandr --output LVDS1 --off"
alias xrandrOn="xrandr --output LVDS1 --auto"
alias xrandrVGA1-On="xrandr --output VGA1 --auto"
alias xrandrVGA1="xrandr -s 1024x768"
alias noToques="clear && cowsay 'NO TOQUES MI ORDENDOR >:u' && echo"
alias LG='xmodmap -e "keycode 62 = less greater"'
alias nf="neofetch | lolcat"
alias nf1="neofetch | lolcat -a -s 500"
alias pf="pfetch | lolcat"
alias pf1="pfetch | lolcat -a -s 500"
alias clr="clear && clear"
alias wifi="sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf"
alias wp="bgs /home/manu/Wallpapers/tux.png &"
alias "p"="sudo pacman"
alias go-dwm="cd /home/manu/suckless/dwm/dwm/"
alias kernel="neofetch --stdout | grep Kernel"
alias svim="sudo vim"
alias sx="neofetch | lolcat && startx"
