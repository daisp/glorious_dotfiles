#!/bin/bash

# NOTE: This repo's folder should be placed in the user's home directory (i.e. ~ or /home/myusername).

printf "\nUsage:\n    1.  Place repo directory in your Linux user home directory: $HOME or simply ~.\n    2.  cd into the repo.\n    3.  run the install.sh script.\n\n"

# Get user approval
read -p "WARNING: This will overwrite your local dotfiles. Are you sure? ['y' to accept, any key to abort]  " answer

if [[ $answer != 'y' ]]; then
	printf "\nInstallation Aborted.\n\n"
	exit	
else	
	printf "\nInstalling the following dotfiles:\n"
	if ! cp -rvT ./user_home_directory $HOME; then
	#else
		printf "\nSomething went wrong. Troubleshooting:\n	1.  Is this repo's directory located at your home folder: $HOME ?\n	2.  Are you running this script from the repo's directory?\n\n"
	fi
fi

printf "\nInstallation complete.\n\n"
