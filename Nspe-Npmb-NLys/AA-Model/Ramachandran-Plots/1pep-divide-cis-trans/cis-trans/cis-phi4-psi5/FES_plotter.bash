#!/bin/bash

##Last exec: ./FES_plotter.bash phi10_metaD.xvg ome1_metaD.xvg phi10_ome1.png phi ome
 
file1=$1 ## xaxis

file2=$2 ## yaxis

image=$3 ## Output image png file 

xaxis=$4

yaxis=$5


awk ' {if ( $1 !~ /[#@]/) print $2 } ' $file1 > "${file1}_copy"
awk ' {if ( $1 !~ /[#@]/) print $2 } ' $file2 > "${file2}_copy"

awk '{if($1<0){$1=$1+360}; print $1 }' "${file1}_copy" > "${file1}_1.dat"
##awk '{if($1<-60){$1=$1+360}; print $1 }' "${file2}_copy" > "${file2}_1.dat" ## Use for ome-phi plot
awk '{if($1<0){$1=$1+360}; print $1 }' "${file2}_copy" > "${file2}_1.dat" ## Use for phi-spi plot

paste "${file1}_1.dat" "${file2}_1.dat" > combined.dat

python generateFES.py -f combined.dat -o "${xaxis}_${yaxis}.png" -t 298 -bx 200 -by 200 -lx "${xaxis}_degrees" -ly "${xaxis}_degrees"

gnuplot -e "imagename='$image'" -e "filename='FES_${xaxis}_${yaxis}.dat'" -e "xnameis='${xaxis}'" -e "ynameis='${yaxis}'" plotFES_modpalette.gnu


