#!/bin/bash

bold="$(tput bold)"
normal="$(tput sgr 0)"

#first flag - install or remove
if [[ $1 = "install" ]]; then
	echo "installing..."
elif [[ $1 = "remove" ]]; then
	echo "removing..."
elif [[ $1 = "--help" ]]; then
	echo -e '
	$(tput setaf 6)USAGE:$(tput sgr 0)
	
	in the project folder:
	./main.sh [option1] [option 2] [package] 

	$(tput setaf 6)AVAILABLE OPTIONS:$(tput sgr 0)

	$(tput bold)option 1:$(tput sgr 0)
	install - install a package.
	remove - remove a package.
	--help - show this help and exit.

	$(tput bold)option 2:$(tput sgr 0)
	-p  - use only if option 1=install. installs a precompiled package.
	-c  - use only if option 1=install. compiles the package from source.
	-pa  - use only if option 1=remove. remove the package

	$(tput setaf 6)EXAMPLE:$(tput sgr 0)

	./main.sh install -c box86

	that will compile and install box86 from source.
	'
	exit
else
	echo -e "${bold}$(tput setaf 1) ERROR: no operation selected! ${normal}"
	exit
fi

#second variable - compile or precompiled
if [[ $2 = "-c" ]]; then
	echo "compiling from source..."
elif [[ $2 = "-p" ]]; then
	echo "installing pre-compiled version..."
elif [[ $2 = "-pa" ]]; then
	echo " "
else
	echo -e "${bold}$(tput setaf 1) ERROR: select -p or -c! ${normal}}"
	exit
fi

#check if you used variables $1 & $2 correctly
if [ "$1" -eq "install" ] && [ "$2" -eq "-pa" ]
then echo "you can't use option 1 'install' and option 2 '-pa'!"
else echo ' '
fi
if [ "$1" -eq "remove" ] && [ "$2" -eq "-p" ]
then echo "you can't use option 1 'remove' and option 2 '-p'!"
else echo ' '
fi
if [ "$1" -eq "remove" ] && [ "$2" -eq "-c" ]
then echo "you can't use option 1 'remove' and option 2 '-c'!"
else echo ' '
fi

#third variable - package
if [[ $3 = "box86" ]]; then
	PACKAGE="box86"
elif [[ $3 = "balena-etcher" ]]; then
	PACKAGE="balena-etcher"
else
	echo -e "${bold}}$(tput setaf 1) ERROR: no package selected! ${normal}}"
	exit
fi

if [[ $1 == "install" ]]; then
	echo "installing $PACKAGE"
elif [[ $1 == "remove" ]]; then
	echo "removing $PACKAGE"
fi

