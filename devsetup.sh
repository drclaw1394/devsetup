#!/usr/bin/env bash


OS=$(uname )

echo Updating and installing packages: tmux, vim, boxes, slurm, etc
if [ $OS = "Darwin" ]; then
	sudo port sync
	sudo port install -N tmux vim boxes slurm zsh
fi

if [ $OS = "Linux" ]; then
	sudo apt-get update
	sudo apt-get install -y  tmux vim boxes slurm zsh
fi

if [ $OS = "FreeBSD" ]; then
	sudo pkg install tmux vim boxes slurm zsh
fi

echo Copying tmux config to home directory
cp .tmux.conf $HOME/.tmux.conf	 


