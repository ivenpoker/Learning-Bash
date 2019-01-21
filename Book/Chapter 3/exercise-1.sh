#!/usr/bin/env bash

#: Title            : exercise-1
#: Date             : 2019-21-1 (yyyy-dd-mm)
#: Author           : Happi Yvan <yvanjoel182@gmail.com>
#: Version          : 1.0
#: Description      : Script ask the 'user' to enter a number between 20 and 30.
#:                    If the user enters an invalid number or a non-number, ask again.
#:                    Repeat until a satisfactory number is entered.

reg='^[0-9]+$'

while :; do
    printf "Enter an integer between 20 and 30 (inclusive): "
    read val
    if ! [[ ${val} =~ $reg ]]; then
        echo "[${val}] is NOT a number."
        continue
    elif [[ ${val} -lt 20 || ${val} -gt 30 ]]; then
        echo "Number [${val}] out of range!"
        continue
    fi
    printf "Great! You entered ${val}\n"
    break
done
