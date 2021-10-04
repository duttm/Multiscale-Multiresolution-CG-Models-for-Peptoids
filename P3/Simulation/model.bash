#!/bin/bash

## Last exec: ./model.bash (on 4th October 2021)

## Note: initial pdb file needs to made with an unmodified charmm force field. 
## Use: 
## 1. ./22to36converter.bash (Check if all CG2O1 atoms are converted to TC)
## 2.  python cgenff_charmm2gmx_py3_nx2.py SRUG SRUG.mol2 SRUG_copy.str charmm36-nov2016.ff/ (last execuation on 4th October 2021)
## 3. Use the charmm-modifed folder to run an energy minimization simulation
## 4. Make changes to the topology file: point to the modified charmm FF folder. 
## 5. You will get errors, fix them one by one. 
##################################################################################################################

## If you run the above commands, it will generate a new .top and .prm file. These files need to be modified to accomodate the hybrid C22 and C36 parameters. The modfied version is kept in a subfolder (XXXXXX) for safe keeping.


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

