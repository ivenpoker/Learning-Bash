#!/usr/bin/env bash

#: Title        : exercise-1
#: Date         : 2019-15-1 (yyyy-dd-mm)
#: Author       : "Happi Yvan" <yvanjoel182@gmail.com>
#: Version      : 1.0
#: Description  : Explanation to the chapter exercise
#: Options      : None

# 1. The 'temp' file may not exist when the command
#    is executed

# 2. The script will read from the 'input stream' which
#    is the file 'temp' and write back to the output stream
#    which is the same file, but this it will TRUNCATE the
#    file.

tr A Z < $HOME/temp > $HOME/temp