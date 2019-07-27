#!/bin/sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3bar &
  done
else
  polybar --reload i3bar &
fi
