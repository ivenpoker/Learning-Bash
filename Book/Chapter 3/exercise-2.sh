#!/usr/bin/env bash

#: Title            : exercise-2
#: Date             : 2019-14-1 (yyyy-dd-mm)
#: Author           : Happi Yvan <yvanjoel182@gmail.com>
#: Version          : 1.0
#: Description      : Script prompts the 'user' to enter the name of a file.
#:                    Repeat until 'user' enters a file that exists.

while :; do
    printf "Enter file name (or path to file): "
    read _filename
    if [[ -e ${_filename} ]]; then
        printf "File [%s] FOUND!\n" ${_filename}
        break
    else
        printf "File [%s] NOT FOUND!\n" ${_filename}
    fi
done