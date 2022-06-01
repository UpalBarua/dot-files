#!/bin/bash

xautolock -detectsleep \
          -notify 1 -notifier "xset dpms force off"\
          -time 5 -locker "betterlockscreeen -l blur"\
          -killtime 10 -killer "systemctl suspend" &
