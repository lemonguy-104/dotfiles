# For starting Xorg with startx 

#Run the autostart script
bash ~/.config/dwm/dwm_bar &

#Wallpaper
nitrogen --restore &

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources dor urxvt
xrdb ~/.Xresources

#Start Xorg server
exec dwm
#exec qtile
