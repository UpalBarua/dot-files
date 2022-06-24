#!/usr/bin/env bash

 # kill existing process
killall -9 sxhkd picom dunst greenclip xidlehook

# Start programs 
pgrep -x sxhkd > /dev/null || sxhkd &
$HOME/.fehbg &
picom -b &
dunst &
greenclip daemon &
$HOME/.config/polybar/scripts/launch.sh &
$HOME/.local/bin/power-manager &
$HOME/.local/bin/low-battery-notifier &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
xsetroot -cursor_name left_ptr &
sleep 2 && if [[ ! $(pgrep -f brave) ]]; then brave; fi &
