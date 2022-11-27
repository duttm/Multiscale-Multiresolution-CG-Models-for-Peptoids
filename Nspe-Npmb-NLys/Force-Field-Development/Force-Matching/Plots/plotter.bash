#!/bin/bash


rm filenames.txt Residue_plots.p


old="replacehere"

echo "what is the name of the residue?"
read new

sed -i -e "s/${old}/${new}/g" down.xml; ## renaming operations

ELEMENTS=$(python filenames.py ${new} 2>&1)

echo "there are ${ELEMENTS} figures; how to you want to distribute them in the figure?"

echo "enter X dimensions"
read DIMX

echo "enter X dimensions"
read DIMY

python merge.py

gnuplot  -e "N='$ELEMENTS'" -e "DIMX='$DIMX'"  -e "DIMY='$DIMY'" -e "imagename='${new}.png'" Residue_plots.p

rm down.xml 

cp down_backup.xml down.xml
