#!/bin/sh
valeursed="find . -type f -exec sed -i 's/$1/$2/g' {} \;"
affichegrep="grepsvn . $2"
if [ $2 ] 
then
    eval $valeursed
    eval $affichegrep
else
    echo "Pour remplacer un mot, il te faut le \"mot\" et son remplacant"
fi
