#!/bin/bash

#first flag - install or remove
if [[ $1 = "install" ]]; then
	echo "installing..."
elif [[ $1 = "remove" ]]; then
	echo "removing..."
fi

#second variable - compile or precompiled
if [[ $2 = "-c" ]]; then
	echo "compiling from source..."
elif [[ $2 = "-p" ]]; then
	echo "installing pre-compiled version..."
fi

if [[ $2 = "-pa" ]]: then
	echo " "
fi

if [[ $3 = "box86" ]]; then
	PACKAGE="box86"
elif [[ $3 = "balena-etcher" ]]; then
	PACKAGE="balena-etcher"
fi

if [[ $1 == "install" ]]; then
	echo "installing $PACKAGE"
elif [[ $1 == "remove" ]]; then
	echo "removing $PACKAGE"
fi



