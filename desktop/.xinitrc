#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.xmodmap
sysresources=/etc/x11/xinit/.Xresources
sysmodmap=/etc/x11/xinit/.xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/x11/xinit/xinitrc.d ] ; then
 for f in /etc/x11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --dpi 96
setxkbmap -option caps:escape
sxhkd &
/home/henan/go/src/notes/notes &
dunst &
kdeconnect-cli &
redshift &
exec bspwm
