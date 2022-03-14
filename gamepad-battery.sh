#!/usr/bin/env bash

LOG_ENTRY=$(upower --dump | head -n -10 | grep -oP '(?<=\D)(\d+%)' | tr '\n' ', ' | sed 's/.$//')
if [ -z "$LOG_ENTRY" ]
then
    echo "Controller: <span color='#F99' weight='normal'>OFF</span> | length=28"
else
    echo "Controller: <span color='#9BF' weight='normal'>$LOG_ENTRY</span> | length=28"
fi
