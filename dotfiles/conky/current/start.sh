#!/bin/bash

killall conky

/home/george/.config/conky/current/weather.sh
#conky -c /home/george/.config/conky/current/mem &
#conky -c /home/george/.config/conky/current/procs &
conky -c /home/george/.config/conky/current/Hermoso_Rc &
conky -c /home/george/.config/conky/current/Dziban2.conf &
