#!/bin/bash


i=2
add=$1

TOP=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=em.mdp


gmx grompp -f package/mdp/$minim -c $GRO -o $tpr -p $TOP -maxwarn 1
gmx mdrun -deffnm $tpr -v


##########################################

## Add Water ##########



TOP=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=em.mdp


gmx solvate -cp $GRO -o $tpr -cs spc216.gro -p $TOP 

##################################################


## Add ions #################################


let ions=(add+1)*2

GRO=$i-input.gro

tpr=$((++i))-input

out=$((++i))-input

gmx grompp -f package/mdp/$minim -c $GRO -o $tpr -p $TOP -maxwarn 1
echo SOL | gmx genion -s $tpr -o $out -p $TOP -nname CL -nn $ions

##########################################

## EM #################################





GRO=$i-input.gro

tpr=$((++i))-input



gmx grompp -f package/mdp/$minim -c $GRO -o $tpr -p $TOP 
gmx mdrun -deffnm $tpr -v

##########################################

