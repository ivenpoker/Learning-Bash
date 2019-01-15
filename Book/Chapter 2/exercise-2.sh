#!/usr/bin/env bash

#: Title        : exercise-2
#: Date         : 2019-14-1 (yyyy-dd-mm)
#: Author       : "Happi Yvan" <yvanjoel182@gmail.com>
#: Version      : 1.0
#: Description  : Script uses the $RANDOM to write a certain (see book)
#:                file and a variable.

format="%s.%s"

var1=''      # variable to store first 'digit format'
var2=''      # variable to store second 'digit format'
var3=''      # variable to store third 'digit format'
var4=''      # variable to store fourth 'digit format'

printf -v val1 ${format} $RANDOM $RANDOM
printf -v val2 ${format} $RANDOM $RANDOM
printf -v val3 ${format} $RANDOM $RANDOM
printf -v val4 ${format} $RANDOM $RANDOM

printf "${val1}\n${val2}\n${val3}\n${val3}" > SAMPLE_FILE

