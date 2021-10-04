#!/bin/bash



## Note: initial pdb file needs to made with an unmodified charmm force field. 
## Use: 
## 1. ./22to36converter.bash (Check if all CG2O1 atoms are converted to TC)
## 2.  python cgenff_charmm2gmx_py3_nx2.py srug srug.mol2 srug_copy.str charmm36-nov2016.ff/
## 3. Use the charmm-modifed folder to run an energy minimization simulation
## 4. Make changes to the topology file: point to the modified charmm FF folder. 
## 4. You will get errors, fix them one by one. 



input=relaxed_ini

pdbin=$input.gro
groout=$input.gro

b=$1
add=$2


gmx editconf -f $pdbin -o $groout -c -box $b $b $b



cp $groout 1-input.gro

i=1


GRO=$i-input.gro

tpr=$((++i))-input




gmx insert-molecules -f $GRO -ci $GRO -o $tpr -try 100 -nmol $add



