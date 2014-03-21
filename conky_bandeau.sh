#!/bin/bash
caps=`xset q | grep "Caps Lock" | awk '{ print $4}'`
num=`xset q | grep "Num Lock" | awk '{ print $8}'`
if [ $num = "on" ]; then num="N-"; else num=""; fi
if [ $caps = "on" ]; then caps="C-"; else caps=""; fi
if [ `pgrep pytyle3` ]; then affichage="P";fi

echo $num$caps$affichage
