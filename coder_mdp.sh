#!/bin/bash

function sha
{
    echo -n "$2"|sha256sum|head -c 64
}
i=0
while IFS=';' read c1
do   
#    if [[ "$i" == "0" ]]; then
 #       pass=$c8    
  #  else
#pass=`sha $c1` 
    echo -n "$c1"|sha256sum|head -c 64 
    echo ""
   # fi
    #let i=1+$i
#    echo "$pass"
done < pass.csv > pass2.csv

