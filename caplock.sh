#!/bin/bash
caps=`xset q | grep "Caps Lock" | awk '{ print $4}'`
if [ $caps = "on" ]; then caps="-C-"; else caps=""; fi
echo $caps
