#!/usr/bin/env bash
#: Title			: exercise-2
#: Date				: 2019-14-1 (yyyy-dd-mm)
#: Author			: "Happi Yvan" <yvanjoel182@gmail.com>
#: Version			: 1.0
#: Description      : Creates a "Hello, World!" script, hw, in $HOME/bpl/bin/; 
#:					  make it executable; and then execute it. 
#: Options			: None 

dir="${HOME}/bpl"
subdir="${dir}/bin"
file_name="hw.sh"

if [[ -d  ${dir} ]]; then 
	echo "failed --> Directory already exists!"
	exit 0
else 
	mkdir ${dir}				# Create directory bpl 
	mkdir ${subdir}				# Create subdirectory bin in bpl
	printf "#!/usr/bin/env bash\n\necho \"Hello, World!\"" > "${subdir}/${file_name}" # Creates "hw.sh" file in subdirectory with some cmd
	chmod u+x "${subdir}/${file_name}" # Make the file executable by user
	bash "${subdir}/${file_name}"	# Execute the file now
fi 