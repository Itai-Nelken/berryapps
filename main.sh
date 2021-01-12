#!/bin/bash

if [[ $1 = "install" ]]; then
	echo "installing..."
fi

if [[ $2 = "-c" ]]; then
	echo "compiling from source..."
elif [[ $2 = "-p" ]]; then
	echo "installing pre-compiled version..."
fi

if [[ $3 = "box86" ]]; then
	PACKAGE="box86"
	echo "searching for box86"
fi

