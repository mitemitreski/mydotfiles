
wmname LG3D
# wicd-client &
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export TERMINAL="xterm"
# export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH
# used by xdg open for file association among other uses
export DE=gnome
# t his is for keyboard layout switch
setxkbmap -layout us,mk \
       -option grp:switch  -option grp:caps_toggle



feh --bg-scale  /home/mite/wallpapers/cyberpunk.jpg &

# wicde client in notification
wicd-client --tray &

# if idle for 3 sec remove mouse pointer

unclutter -idle 3 &
# /usr/bin/stalonetray --geometry 16x16+150-586 --icon-size 16 & ## for non tray wm's
xsetroot -solid black &
# qxkb  > /dev/null &
xset -b

## X conky bar
conky &

## Notificatation deamon for tiling wms
twmnd &

# exec ck-launch-session dwm
# exec ck-launch-session i3 
## debug:
exec i3 >~/i3log/i3-$(date +'%F-%k-%M-%S') 2>&1
# exec ck-launch-session awesome
