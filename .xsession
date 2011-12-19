
wmname LG3D
wicd-client &
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH

# t his is for keyboard layout switch
setxkbmap -layout us,mk \
       -option grp:switch  -option grp:caps_toggle



feh --bg-scale  /home/mite/wallpapers/cyberpunk.jpg &

# if idle for 3 sec remove mouse pointer

unclutter -idle 3 &
# /usr/bin/stalonetray --geometry 16x16+150-586 --icon-size 16 & ## for non tray wm's
xsetroot -solid black &
qxkb  > /dev/null &
xset -b

## X bar
# conky &


# exec ck-launch-session dwm
exec ck-launch-session i3
# exec ck-launch-session awesome
