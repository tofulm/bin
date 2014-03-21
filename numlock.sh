#!/bin/bash
num=`xset q | grep "Num Lock" | awk '{ print $8}'`
if [ $num = "on" ]; then num="N"; else num=""; fi
echo $num
