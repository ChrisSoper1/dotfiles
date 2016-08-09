#!/bin/bash
if [ -f "$HOME/.fehbg" ]; then
	sh "${HOME}/.fehbg" &
fi

if [ -x /usr/bin/setxkbmap ]; then
	setxkbmap -option ctrl:nocaps
fi
