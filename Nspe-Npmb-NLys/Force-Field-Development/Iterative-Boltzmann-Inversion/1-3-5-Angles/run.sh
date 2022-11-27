#!/bin/bash
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH --ntasks-per-node=8
#SBATCH -t 48:00:00


# Setup the module command
set echo
set -x 


cd $SLURM_SUBMIT_DIR




rm -r step*  inverse.log

module load gromacs/2018

echo 'running csg_inverse --options "settings.xml"'
csg_inverse --options Settings_P3_Angles_Pseudo.xml
