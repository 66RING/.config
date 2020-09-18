#!/usr/bin/env bash

while [ ! -z "$(pgrep polybar)" ]; do
    killall polybar
done

cat /tmp/polybar1.log > /tmp/polybar2.log
printf "===== Polybar log =====\n\n" > /tmp/polybar1.log &

if type "xrandr"; then
  # for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  for m in $(polybar -m|sed -e 's/:.*$//g'); do  # with a priority
    bspc monitor $m -d 1 2 3 4 5 6 7 8 9 10
    MONITOR=$m polybar --reload primary >> /tmp/polybar1.log 2>&1 &
  done
else
  bspc monitor -d 1 2 3 4 5 6 7 8 9 10
  polybar --reload primary >> /tmp/polybar1.log 2>&1 &
fi
