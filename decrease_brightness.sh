#!/bin/bash
read currBrightness < /sys/class/backlight/intel_backlight/brightness
read maxBrightness < /sys/class/backlight/intel_backlight/max_brightness
if [ "$currBrightness" -gt 10 ] && [ "$currBrightness" -le 40 ] # 1-40
then
    xbacklight -dec 0.2
elif [ "$currBrightness" -le 75 ] && [ ! "$currBrightness" -le 40 ] # +40
then
    xbacklight -dec 0.5
elif [ "$currBrightness" -gt 75 ] && [ "$currBrightness" -le 375 ] # 75-375
then
    xbacklight -dec 1
elif [ "$currBrightness" -gt 375 ] # +375
then
	xbacklight -dec 5
fi	
