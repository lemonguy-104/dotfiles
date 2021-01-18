# For starting Xorg with startx 

#Run the autostart script
bash ~/.dotfiles/dwm_start &

# Start twmnd
twmnd & # https://github.com/sboli/twmn

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

#Start Xorg server
exec dwm
#exec qtile
