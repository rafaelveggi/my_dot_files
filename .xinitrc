#!/bin/sh

xmodmap ~/.Xmodmap

battery_life()
{
	if [ "$( acpi -a | awk '{ print $3 }' )" = "off-line" ]; then
		echo "$( acpi | awk '{ print $4 }' | sed 's/,$//g' )"
	else
		echo "+"
	fi

}

while true; do
	DATE=$( date +"%F %R" )
	xsetroot -name " $DATE [$( battery_life )]"
	sleep 1m
done &

exec dwm
