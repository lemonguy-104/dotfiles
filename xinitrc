#~/.dotfiles/xinitrc -> ~/.xinitrc

# Start dunst
systemctl --user import-environment DISPLAY # Uncomment if notifications arent working

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

#Run the autostart script
bash ~/.dotfiles/dwm_start.sh

#Start Xorg server
exec dwm
#exec qtile
