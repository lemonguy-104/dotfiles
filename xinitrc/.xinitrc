# Start Xorg with startx (use only for my dwm build)

# Start the status bar
slstatus &

# Wallpaper
#nitrogen --restore &
#variety &
$HOME/.wallpapers/zt_meteor/wallpp

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources for urxvt
#xrdb ~/.Xresources

# Autostart progs
franz &

# Start Xorg server
exec dwm
#exec qtile
