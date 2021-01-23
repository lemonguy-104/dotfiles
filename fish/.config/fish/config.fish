# ~/.config/fish/config.sh

# Sets
set EDITOR "vim"
set -U fish_greeting

# Alias

alias ls="exa"
alias ll="exa -lh"
alias la="exa -lah"
#alias ls='ls --color=auto'
alias sl='ls'
alias s='ls'
alias l='ls'
alias pls="sudo"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias reboot="sudo reboot"
alias up-dg="update && upgrade"
alias up-dg-r="update && upgrade && reboot"
alias tlauncher="java -jar ~/tlauncher/TLauncher-2.72.jar"
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
alias "p"="doas pacman"
alias go-dwm="cd /home/manu/suckless/dwm/"
alias kernel="neofetch --stdout | grep Kernel"
alias svim="sudo vim"
alias dvim="doas vim"
alias sx="neofetch && startx"
alias ":q"="exit"
alias bim="vim"
alias cf="vim ~/.config/fish/config.fish"


# Prompt

#function fish_prompt
 #   if not set -q VIRTUAL_ENV_DISABLE_PROMPT
 #       set -g VIRTUAL_ENV_DISABLE_PROMPT true
 #   end
 #   set_color yellow
 #   printf '%s' $USER
 #   set_color normal
 #   printf ' at '

 #   set_color magenta
 #   echo -n (prompt_hostname)
 #   set_color normal
 #   printf ' in '

 #   set_color $fish_color_cwd
 #   printf '%s' (prompt_pwd)
 #   set_color normal

 #   # Line 2
 #   echo
 #   if test $VIRTUAL_ENV
 #       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
 #   end
 #   printf '↪ '
 #   set_color normal
#end
