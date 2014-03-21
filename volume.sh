#!/bin/bash

action=`amixer get Master | tail -1 | sed 's/.*\[\([on]*\)\].*/\1/'`
if [[ "$action" == "on" ]]; then
    vol=`amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/'`
else
    vol="0%"
fi
echo " Vol: $vol"
