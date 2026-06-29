#!/usr/bin/env bash

PATH=/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/bin

# */5 * * * *
ln -sf $(find $HOME/.local/share/terminal-bg -type f | shuf -n 1) \
	$HOME/.local/share/terminal-bg/lock.jpg

pkill -USR2 ghostty
