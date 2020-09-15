#!/usr/bin/env bash

killall -q polybar

# IsPrimary=1
MONITORs=$(polybar -m|sed -e 's/:.*$//g')

cat /tmp/polybar1.log > /tmp/polybar2.log
printf "===== Polybar log =====\n\n" > /tmp/polybar1.log &

for m in $MONITORs; do
    bspc monitor $m -d 1 2 3 4 5 6 7 8 9 10

    export MONITOR=$m
    # if [ "$IsPrimary" -eq 1 ]; then
        polybar primary >> /tmp/polybar1.log 2>&1 &
        # ((IsPrimary++))
    # else
        # polybar secondary >> /tmp/polybar1.log 2>&1 &
    # fi
    unset MONITOR
done

