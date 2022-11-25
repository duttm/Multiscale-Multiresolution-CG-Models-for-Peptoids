#!/bin/bash
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH --ntasks-per-node=1
#SBATCH -t 24:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXXXXXX

# Setup the module command
set echo
set -x 

top=2018.tpr
trj=18-input.xtc
##trj=short_traj.xtc


echo Calculating distributions
csg_stat --top ${top}  --trj ../${trj} --cg  "P3_NB.xml;water.xml;chlorine.xml"  --options setting_pep-water.xml --begin 100000

mkdir Dists

cp *.new Dists/
rm *.new




