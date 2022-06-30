#!/usr/bin/env bash

xrdb -load ~/.Xresources &
xgamma -gamma .855

exec bspwm
