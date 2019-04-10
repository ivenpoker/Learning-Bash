#!/usr/bin/env bash

#: Title                    : greeting-bash
#: Date                     : 4/10/2019
#: Author                   : Happi Yvan <ivensteinpoker@gmail.com>
#: Version                  : 1.0
#: Description              : Asks user for his/her name, then say a greeting.
#: Options                  : None


printf "Enter your name: "                  # Prompt user for a name
read user_name                              # read user's name

if [[ -n ${user_name} ]]; then              # Was the user's name given ?
    printf "Hello %s!\n" ${user_name}        # We got the user's name, print a Hello.
    exit 0                                  # Exit with 'success' status
else
    printf "You did not tell me your name! :("  # Oops! No user name provided
    exit 0                                  # Exit with 'success' status
fi