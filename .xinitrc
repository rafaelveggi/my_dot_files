#!/bin/sh

#xmodmap ~/.Xmodmap

battery_life()
{
	echo "[+]"
	if [ "$( acpi -a | awk '{ print $3 }' )" = "off-line" ]; then
		echo "[$( acpi | awk '{ print $4 }' | sed 's/,$//g' )]"
	fi
}

while true; do
	DATE=$( date +"%F|%a|%R" )
	xsetroot -name " $DATE $( battery_life )"
	sleep 10s
done &

exec dwm
#exec dwm
