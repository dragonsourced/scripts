#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

settheme() {
    if [ "$(date +%H)" -ge 16 ]; then
        theme set dark
    else
        theme set light
    fi
}

# For theme script.
xfsettingsd

compton -CczbfD1 -o0.5

redshift &
settheme &
wm

killall status
killall redshift
