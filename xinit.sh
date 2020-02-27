#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

compton -czbCo0.2

settheme() {
    if [ "$(date +%H)" -ge 16 ]; then
        theme set dark
    else
        theme set light
    fi
}

# For theme script.
xfsettingsd

redshift &
settheme &
wm

killall status
killall redshift
