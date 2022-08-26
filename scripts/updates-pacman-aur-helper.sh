#!/bin/bash

if ! updates_arch=$(pacman -Qu 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$((updates_arch + updates_aur))
sleep 5s

if [ "$updates" == 1 ]; then
    /home/george/scripts/pop_report -m "you have $updates update ready"
    echo "  (Updates Ready)"
elif [ "$updates" -gt 1 ]; then
    /home/george/scripts/pop_report -m "you have $updates updates ready"
    echo "  (Updates Ready)"
else
    echo "  (Up To Date)"
fi
