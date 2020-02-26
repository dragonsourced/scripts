#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

compton -czbCo0.2

theme=$(command -v theme)

theme() {
    if [ "$(date +%H)" -ge 16 ]; then
        $theme dark
    else
        $theme light
    fi
}

# For theme script.
xfsettingsd

redshift &
theme &
wm

killall status
killall redshift
