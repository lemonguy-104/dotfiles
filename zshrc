# ~/.rc/zshrc
# Good guides -> https://wiki.archlinux.org/index.php/Zsh
#	      -> https://wiki.gentoo.org/wiki/Zsh/Guide

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_histfile

# PS1
#PS1='%F{magenta}%n%f@%F{blue}%m%f%F{yellow}%B%~%b%f $ '
#PS1="[%F{magenta}%n%f @%  %F{blue}%M%f %F{yellow}%~%f]> "
#PS1="%F{yellow}[%f %F{magenta}%n%f %F{green}@%f %F{blue}%M%f %F{green}%~%f %F{yellow}]%f %F{green}>%f "
PS1="%F{red}[%f%F{yellow}%n%f%F{cyan}@%f%F{green}%M%f%F{cyan}%~%f%F{red}]%f%F{cyan}>%f "

# Configurations
unsetopt beep #beeps when errors

# Completation
autoload -Uz compinit promptinit # Base completation
compinit # Base completation
zstyle ':completion:*' menu select # Select on the menu
setopt COMPLETE_ALIASES # Aliases completation
zstyle ':completion::complete:*' gain-privileges 1 # For running with sudo

#The fuck (https://github.com/nvbn/thefuck)
eval $(thefuck --alias)

#Cowsay saying a somithing from fortune cokkie when open a terminal (Requieres cowsay and fortune)
fortune | cowsay -f tux ; echo 

# Alias\

#doas
alias sudo="doas"

# directories
alias ls="exa"
alias ll="exa -lh"
alias la="exa -lah"
#alias ls='ls --color=auto'
alias sl='ls'
alias s='ls'
alias l='ls'
alias mkd="mkdir -pv"
alias rm="rm -v"
alias mv"mv -v"
alias cp"cp -v"

# utilities
alias tlauncher="java -jar ~/mc/TLauncher-2.72.jar"
alias go-dwm="cd /home/manu/suckless/dwm/"
alias LG='xmodmap -e "keycode 62 = less greater"'
alias clr="clear"
alias ":q"="exit"
alias vim=nvim
alias bim="sh -c vim"
alias svim="sudo vim"
alias dvim="sudo vim"
alias play="sh ~/.dotfiles/play.sh"
alias yt-dl="youtube-dl"
alias virt="sudo virt-manager"

# System
alias pls="sudo"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias reboot="sudo reboot"
alias up-dg="update && upgrade"
alias up-dg-r="update && upgrade && reboot"
alias wpas="sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf"
alias kernel="neofetch --stdout | grep Kernel"
alias "p"="sudo pacman"
alias "xi"="sudo xbps-install"
alias "xr"="sudo xbps-remove"
alias "xq"="xbps-query"
alias myip="curl https://ipinfo.io/ip"

# random
alias noToques="clear && cowsay 'NO TOQUES MI ORDENDOR >:u' && echo"
alias nf="neofetch | lolcat"
alias nf1="neofetch | lolcat -a -s 500"
alias pf="pfetch | lolcat"
alias pf1="pfetch | lolcat -a -s 500"

