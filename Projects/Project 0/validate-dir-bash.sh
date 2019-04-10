#!/usr/bin/env bash

#: Title                 : validate-dir-bash
#: Date                  : 4/10/2019
#: Author                : Happi Yvan <ivensteinpoker@gmail.com>
#: Version               : 1.0
#: Description           : when executed with two commandline arguments
#:                       : validates that, the two arguments are valid
#:                       : directories.

function show_usage {

    printf "Usage: ${0} <source-dir> <destination-dir>\n"

    if [[ $# -eq 0 ]]; then
        exit 99        # Exit with arbitrary nonzero code
    else
        exit $1
    fi
}

# Main program starts here

if [[ $# -ne 2 ]]; then                 # if the number of arguments isn't two....
    show_usage
else
    if [[ -d $1 ]]; then                # if the first argument is a directory....
        source_dir=$1
    else
        printf "Invalid source directory '%s'\n" ${1}
        show_usage
    fi
    if [[ -d $2 ]]; then                # if the second argument is a directory....
        dest_dir=$2
    else
        printf "Invalid destination directory '%s'\n" ${2}
        show_usage
    fi
fi

printf "Source directory is: %s\n" ${source_dir}
printf "Destination directory is: %s\n" ${dest_dir}










