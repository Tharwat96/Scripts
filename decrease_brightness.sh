#!/bin/bash

# requires xbacklight
read currBrightness < /sys/class/backlight/intel_backlight/brightness
read maxBrightness < /sys/class/backlight/intel_backlight/max_brightness
if [ "$currBrightness" -gt 1 ] && [ "$currBrightness" -le 15 ] # 1-15
then
    xbacklight -dec 0.01
elif [ "$currBrightness" -ge 15 ] && [ "$currBrightness" -le 40 ] # 15-40
then
    xbacklight -dec 0.2
elif [ "$currBrightness" -ge 40 ] && [ "$currBrightness" -le 75 ] # 40 - 75
then
    xbacklight -dec 0.5
elif [ "$currBrightness" -ge 75 ] && [ "$currBrightness" -le 375 ] # 75-375
then
    xbacklight -dec 1
elif [ "$currBrightness" -gt 375 ] && [ "$currBrightness" -le 800 ] # 375 - 800 
then
	xbacklight -dec 3
elif [ "$currBrightness" -gt 375 ] # +800 
then
	xbacklight -dec 5
fi	
