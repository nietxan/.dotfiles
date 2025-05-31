#!/usr/bin/env bash

# */5 * * * *
ln -sf $(find $HOME/.local/share/backgrounds/lock-screen -type f | shuf -n 1) \
	$HOME/.local/share/backgrounds/lock.jpg
