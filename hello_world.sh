#!/bin/bash

MESSAGE="Hello World!"
DELAY=0.1
last_color=-1

while [ 1 ]
do
	current_color=$((RANDOM % 5 + 1))
	if [ $current_color -eq $last_color ]
	then
		continue
	fi
	last_color=$current_color
	echo "$(tput setaf $current_color)"$MESSAGE"$(tput sgr0)"
	sleep $DELAY
	clear
done
