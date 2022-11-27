#!/bin/bash
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH --ntasks-per-node=8
#SBATCH -t 48:00:00


# Setup the module command
set echo
set -x 

module load gromacs/2020.2-cpu
cd $SLURM_SUBMIT_DIR



rm -r step*  inverse.log

module load gromacs/2018


echo 'running csg_inverse --options "settings.xml"'
csg_inverse --options settings_CG.xml

