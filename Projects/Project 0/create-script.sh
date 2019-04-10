#!/usr/bin/env bash

#: Title                    : create-script
#: Date                     : 4/10/2019
#: Author                   : Happi Yvan <ivensteinpoker@gmail.com
#: Version                  : 1.0
#: Description              : When executed with 2 arguments, the script will
#:                          : create a script at a required location and make it executable

function show_usage {
    printf "Usage: ${0} <destination-directory> <script-name>\n"
    if [[ $# -eq 0 ]]; then
        exit 99                 # Exit with arbitrary non-zero code.
    else
        exit ${1}
    fi
}

# Main program begins here.

if [[ $# -ne 2 ]]; then                 # if the number of arguments isn't two
    show_usage
else
   if [[ -d $1 ]]; then                 # if the first argument is a directory

        if [[ -w $1 ]]; then            # if 'I' have write permission on directory

            if [[ -n $2 ]]; then        # if the user provided the name of the file to create

                if [[ -e $2 ]]; then    # if there was an already existing file with same name there....terminate.
                    printf "File already exists with same name!"
                else
                    new_file="${1}/${2}.sh"
                    touch ${new_file}
                    chmod +x ${new_file}
                fi
            else
                printf "Please provide name for script\n"
                show_usage
            fi
        else
            printf "Write permission denied for directory '%s'\n" ${1}
        fi
   else
        printf "Invalid source directory '%s'\n" ${1}
        show_usage
   fi
fi
