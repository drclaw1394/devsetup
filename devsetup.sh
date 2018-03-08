#!/usr/bin/env bash


OS=$(uname )

if [ $OS = "Darwin" ]; then
	sudo port install vim boxes slurm
fi

if [ $OS = "Linux" ]; then
	sudo apt-get install vim boxes slurm
fi

if [ $OS = "FreeBSD" ]; then
	sudo pkg install vim boxes slurm
fi


