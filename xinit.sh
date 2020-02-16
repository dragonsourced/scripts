#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

# Uncomment if you want shadows & suchlike.
# compton -CczfbD1 -o 0.1

if [ "$(date +%H)" -ge 16 ]; then
    theme dark
else
    theme light
fi

# For theme script.
xfsettingsd

exec sowm
