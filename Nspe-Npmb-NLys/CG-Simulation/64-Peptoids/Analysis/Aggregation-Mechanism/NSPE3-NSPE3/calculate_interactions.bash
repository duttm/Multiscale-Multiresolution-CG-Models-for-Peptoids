#!/bin/bash

##last exec: /dendron_render.bash *.gro

##Input and Output files
input_gro=$1
out=DEN_centered.gro

###################################################

##GROMACS executable
##gmx_exec=gmx ## Now coming from EXPORT command
dendron_group=2 ## may change on the basis of gromacs version and some system geometry details. 
######################################################################


echo "$dendron_group" | $gmx_exec trjconv -f $input_gro -s $input_gro -o $out
mv $out ../

rm *.gro
