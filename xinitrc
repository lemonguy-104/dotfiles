#!/usr/bin/sh

#XinitRC

#Run the autostart script
bash ~/.rc/dwm_start.sh

#Start Xorg server
exec dwm
#wine .dwm-win32/dwm-win32-alpha2.exe
