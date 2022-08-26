#!/bin/bash 

if awk '{ exit ($1 < (3 * 3600)) }' /proc/uptime; then
    /home/george/scripts/pop_report -m "time for a break... "
elif awk '{ exit ($1 < (4 * 3600)) }' /proc/uptime; then
    /home/george/scripts/pop_report -m "really, go get some sun." 
elif awk '{ exit ($1 < (5 * 3600)) }' /proc/uptime; then
    /home/george/scripts/pop_report -m "late night?" 
elif awk '{ exit ($1 < (6 * 3600)) }' /proc/uptime; then
    /home/george/scripts/pop_report -m "this is getting unhealthy... "
fi
