#!/usr/bin/env bash

xrdb -load ~/.Xresources &
xgamma -gamma .85

exec bspwm
