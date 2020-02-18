#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

compton -CczfbD1 -o 0.1

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

theme &
wm

killall status
