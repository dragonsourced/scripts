#!/bin/sh

# Turn off the connected HDMI ports, if any.
xrandr --output HDMI-1 --off

# shellcheck source=/home/Gordon/.fehbg
[ -f ~/.fehbg ] && . ~/.fehbg

compton -CczfbD1 -o 0.1
redshift &
dunst &

if [ "$(date +%H)" -ge 16 ]; then
    theme dark &
else
    theme light &
fi

sowm &
sowm=$!

xfsettingsd

wait $sowm

killall redshift
killall bar.sh
