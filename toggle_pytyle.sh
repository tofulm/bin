#!/bin/bash 
# vérifie si pytyle est actif 
ps -ef | grep -v grep | grep pytyle3 
if [ $? -eq 1 ] 
then # Non trouvé, le lance 
  echo "Activé"
  pytyle3 
else # Le tue
  killall pytyle3 
  echo "Desactive"
fi
