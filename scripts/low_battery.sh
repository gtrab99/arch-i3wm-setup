#!/bin/bash 
POWERSUPPLY="/sys/class/power_supply/ACAD/online"
LOW=20
CRIT=10
NOT_CHARGING="0"

BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat $POWERSUPPLY)

if [ $BATTERY_LEVEL -le $LOW -a $STATUS = $NOT_CHARGING ] 
    then
    if [ $BATTERY_LEVEL -le $CRIT ] 
        then
        /home/george/scripts/pop_report -m "you might want to find an outlet"
    else
        /home/george/scripts/pop_report -m "your battery is running low" 
    fi
fi
        
exit 0
