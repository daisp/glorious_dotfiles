#!/bin/bash

# NOTE: This repo's folder should be placed in the user's home directory (i.e. ~ or /home/myusername).

function abort {
         printf "\nInstallation aborted.\n\n"
         exit
}

abort=0

if [[ `pwd` != $HOME/glorious_dotfiles ]]; then
	printf "\nERROR: Either the current working directory is not $HOME/glorious_dotfiles or the repo directory is not located in this user's home directory.\n"
	abort=1
fi

printf "\nUsage:\n    1.  Place repo directory in your Linux user home directory: $HOME or simply ~.\n    2.  cd into the repo.\n    3.  run the install.sh script.\n\n"

if [[ $abort = 1 ]]; then
	abort
fi

# Get user approval
read -p "WARNING: This will overwrite your local dotfiles. Continue? ['y' to accept, anything else to abort]  " answer

if [[ $answer != 'y' ]]; then
	abort
else	
	printf "\nInstalling the following dotfiles:\n"
	if ! cp -rvT ./user_home_directory $HOME; then
		printf "\nSomething went wrong. Troubleshooting:\n	1.  Is this repo's directory located at your home folder: $HOME ?\n	2.  Are you running this script from the repo's directory?\n\n"
		exit
	fi
fi

printf "\nInstallation complete.\n\n"
