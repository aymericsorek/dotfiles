#!/bin/sh

icon=""

if [ "$(pgrep -x redshift)" ]; then
    temp=$(redshift -p 2> /dev/null | grep temp | cut -d ":" -f 2 | tr -dc "[:digit:]")

    if [ -z "$temp" ]; then
        echo "%{F#65737E} "$icon
    elif [ "$temp" -ge 5000 ]; then
        echo "%{F#8FA1B3} "$icon
    elif [ "$temp" -ge 4000 ]; then
        echo "%{F#EBCB8B} "$icon
    else
        echo "%{F#D08770} "$icon
    fi
fi
