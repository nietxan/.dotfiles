#!/usr/bin/env bash

# */5 * * * *
ln -sf $(find $HOME/.local/share/terminal-bg -type f | shuf -n 1) \
	$HOME/.local/share/terminal-bg/lock.jpg

pkill -USR2 ghostty
