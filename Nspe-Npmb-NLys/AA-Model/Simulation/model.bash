#!/bin/bash

## Last exec: ./model.bash (on 4th October 2021)


input=srug_ini

pdbin=$input.pdb
groout=$input.gro

b=5



gmx editconf -f $pdbin -o $groout -c -box $b $b $b



cp $groout 1-input.gro

## Energy Minimization ##########

i=1

TOP=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=em.mdp


gmx grompp -f mdp/$minim -c $GRO -o $tpr -p $TOP -maxwarn 1
gmx mdrun -deffnm $tpr -v


##########################################

## Add Water ##########

i=2

TOP=srug.top

GRO=$i-input.gro

tpr=$((++i))-input

minim=em.mdp


gmx solvate -cp $GRO -o $tpr -cs spc216.gro -p $TOP 

##################################################


## Add ions #################################

i=3

ions=2

GRO=$i-input.gro

tpr=$((++i))-input

out=$((++i))-input

gmx grompp -f mdp/$minim -c $GRO -o $tpr -p $TOP -maxwarn 1
echo SOL | gmx genion -s $tpr -o $out -p $TOP -nname CL -nn $ions

##########################################

## EM #################################

i=5



GRO=$i-input.gro

tpr=$((++i))-input



gmx grompp -f mdp/$minim -c $GRO -o $tpr -p $TOP 
gmx mdrun -deffnm $tpr -v

##########################################

