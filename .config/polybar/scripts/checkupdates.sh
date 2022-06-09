#!/usr/bin/env bash

updates=$(checkupdates)

if [ -z "$updates" ]
then
  count=0
else
  printf '%s\n' "$updates" > /tmp/polybar-updates
  count=$(wc -l "/tmp/polybar-updates" | awk '{print $1}')
fi

echo "$count"
