#!/bin/bash 

DATE=$(date +%m-%d)
TIME=$(date +%H)

if [ $TIME -ge 24 -a $TIME -lt 6 ]
    then GREETING="late night $USER?"
fi
if [ $TIME -ge 6 -a $TIME -lt 12 ]
    then GREETING="good morning $USER!"
fi
if [ $TIME -ge 12 -a $TIME -lt 18 ]
    then GREETING="good afternoon $USER!"
fi
if [ $TIME -ge 18 -a $TIME -lt 24 ]
    then GREETING="good evening $USER!"
fi

if [ $DATE = '01-01' ]
    then GREETING="happy new year $USER!"
elif [ $DATE = '06-19' ]
    then GREETING="happy juneteenth $USER!"
elif [ $DATE = '07-04' ]
    then GREETING="happy fourth of july $USER!"
elif [ $DATE = '11-11' ]
    then GREETING="happy veteran's day $USER!"
elif [ $DATE = '12-25' ]
    then GREETING="merry christmas $USER!"
elif [ $DATE = '03-02' ]
    then GREETING="happy birthday $USER!"
fi

/home/george/scripts/pop_report -m "$GREETING"
exit 0
