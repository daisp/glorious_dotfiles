#!/bin/bash

# NOTE: This repo's folder should be placed in the user's home directory (i.e. ~ or /home/myusername) .

printf "\nUsage:\n    1.  This repo's folder should be placed at your home directory:\n        $HOME\n        Is this the case?\n    2.  Run this script from the repo's directory.\n\n"

read -p "WARNING: This will overwrite your local dotfiles. Are you sure? [y/n]  " answer

if [ $answer = 'n' ]; then
	printf "\nInstallation Aborted.\n\n"
	exit	
elif [ $answer = 'y' ]; then
	printf "\nSuccessfully installed dotfiles in:\n"
	if cp -r ./user_home_directory/ $HOME ; then
		echo "$HOME"
	else
		printf "\nSomething went wrong. Troubleshooting:\n	1.  Is this repo's directory located at your home folder: $HOME ?\n	2.  Are you running this script from the repo's directory?\n\n"		
	fi
else
	echo "\nI did not understand that. Please rerun this installation script and type 'y'.\n\n"
fi

printf "\nDone.\n\n"
