#!/bin/bash


i=6

top=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=mdp/nvt.mdp

gmx grompp -f $minim -c $GRO -o $tpr -p $top

gmx mdrun -deffnm $tpr -v




GRO=$i-input.gro

tpr=$((++i))-input

minim=mdp/npt.mdp

gmx grompp -f $minim -c $GRO -o $tpr -p $top

gmx mdrun -deffnm $tpr -v



