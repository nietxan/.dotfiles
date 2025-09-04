#!/usr/bin/env bash

if [[ $EUID -ne 0 ]]; then
    echo "use sudo." >&2
    exit 1
fi

networks=$(netbird status --json | jq -r '.peers.details[0].networks[]')

case $(uname -s) in
	Darwin)
		for net in $networks; do
			route route -n add -net $net -interface utun100
		done
		;;
	Linux)
		for net in $networks; do
			ip route add $net dev wt0
		done
		;;
esac
