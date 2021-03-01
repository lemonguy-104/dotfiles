# Start Xorg with startx (use only for my dwm build)

# Start the status bar
slstatus &

# Wallpaper
nitrogen --restore &

# Hide mouse after 3 seconds of inactivity
unclutter -idle 3 &

# Xresources for urxvt
#xrdb ~/.Xresources

# Start Xorg server
exec dwm
#exec qtile
