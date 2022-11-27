#!/bin/bash
#SBATCH -N 1
#SBATCH -p RM
#SBATCH --ntasks-per-node=128
#SBATCH -t 48:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXXXXXXXXX

# Setup the module command
set echo
set -x 
# Load the needed modules
##source /opt/packages/gromacs-CPU-2018/bin/GMXRC.bash


rm core.*




python3 launcher.py $bead1 $bead2




rm core.*
