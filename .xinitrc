#!/bin/sh

# this file is run when calling startx

# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -r ~/.xprofile ] && . ~/.xprofile

# launch the session, commands below this line will be ignored

# Here Xfce is kept as default
session=${1:-bspwm}

case $session in
    bspwm             ) exec bspwm;;
    dwm               ) exec dwm;;
    herbstluftwm      ) exec herbstluftwm;;
    awesome           ) exec awesome;;
    *                 ) exec $1;;
esac

# exec bspwm
