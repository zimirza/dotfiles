#!/bin/sh

wmname LG3D
setxkbmap -layout us -option caps:swapescape

xrandr -s 1920x1080

exec dwm
