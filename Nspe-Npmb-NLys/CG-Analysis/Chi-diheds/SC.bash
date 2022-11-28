#!/bin/bash

##last exec: ./rotational_barrier.bash ffw3_reweight.dat ffw6_reweight.dat ffw9_reweight.dat

file1=$1

gnuplot -e "filename1='${file1}'"  SC.p

exit


