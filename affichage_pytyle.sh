#!/bin/bash 
# vérifie si pytyle est actif 
#toto=`ps -ef | grep -v grep | grep pytyle2 | awk'{ print $1}'` 
#echo $toto
if [ `pgrep pytyle2` ]; then affichage="P";fi
echo "$affichage"
