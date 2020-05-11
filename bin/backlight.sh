#!/bin/zsh
cur=$(cat /sys/class/backlight/intel_backlight/brightness)
if [[ $1 == "+" ]] {
	integer new=$((cur + 2666))
} elif [[ $1 == "-" ]] {
	integer new=$((cur - 2666))
} else {
	integer new=$1
}

if [[ $new -ge 26666 ]] {
	new=26666
	xset dpms force on
} elif [[ $new -le 0 ]] {
	new=0
	sleep 1
	xset dpms force off
} else {
	sudo echo $new > /sys/class/backlight/intel_backlight/brightness
}
