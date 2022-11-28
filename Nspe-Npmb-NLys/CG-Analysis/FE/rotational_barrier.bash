#!/bin/bash

##last exec: ./rotational_barrier.bash ffw3_reweight.dat ffw6_reweight.dat ffw9_reweight.dat

file1=$1

file2=$2

file3=$3






awk ' {if ( $1 !~ /[#@]/) print $1 " " $2 } ' $file1 > "${file1}_copy"

awk ' {if ( $1 !~ /[#@]/) print $1 " " $2 } ' $file2 > "${file2}_copy"

awk ' {if ( $1 !~ /[#@]/) print $1 " " $2 } ' $file3 > "${file3}_copy"



python add.py "${file1}_copy"
python add.py "${file2}_copy"
python add.py "${file3}_copy"

gnuplot -e "filename1='${file1}_copy_mod'" -e "filename2='${file1}_copy_mod'" -e "filename3='${file3}_copy_mod'" FE.p

exit


