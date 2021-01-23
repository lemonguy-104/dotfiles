# For starting Xorg with startx 

#Run the autostart script
bash ~/.dotfiles/dwm_start &

#Wallpaper
nitrogen --restore &

# Start twmnd
twmnd & # https://github.com/sboli/twmn

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources dor urxvt
xrdb ~/.Xresources

#Start Xorg server
exec dwm
#exec qtile
