#!/bin/bash


i=7

top=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=package/mdp/nvt.mdp

gmx grompp -f $minim -c $GRO -o $tpr -p $top

gmx mdrun -deffnm $tpr -v




GRO=$i-input.gro

tpr=$((++i))-input

minim=package/mdp/npt.mdp

gmx grompp -f $minim -c $GRO -o $tpr -p $top

gmx mdrun -deffnm $tpr -v



