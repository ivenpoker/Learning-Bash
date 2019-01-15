#!/usr/bin/env bash
#: Title			: exercise-1
#: Date				: 2019-14-1 (yyyy-dd-mm)
#: Author			: "Happi Yvan" <yvnajoel182@gmail.com>
#: Version			: 1.0
#: Description		: Script to create a directory call 'bpl' inside $HOME and 
#				      Populate this directory with two subdirectories, 'bin' and 'scripts'
#: Options			: None 

dir_one="${HOME}/bpl"				# Path (relative to 'home') for the 'bpl' directory
subdir_one="${dir_one}/bin"			# Path (relative to 'dir_one') for the 'bin' directory
subdir_two="${dir_one}/scripts"		# Path (relative to 'scripts') for the 'scripts' directory

if [[ -d ${dir_one} ]]; then        # if the file exists and is directory...
	printf "Directory alread exists!"
	exit 0
else 
	mkdir ${dir_one}				# Creates bpl
	mkdir ${subdir_one}   			# Creates bpl/bin
	mkdir ${subdir_two} 			# Creates bpl/scripts
fi