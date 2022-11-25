#!/bin/bash

module load gromacs/2020.2-cpu

##declare -a arrold=("ome2" "ome3" "ome4" "ome5" "ome6" "ome7" "ome8" "ome9" "ome10" "ome11") ## C36 parameters

##declare -a arrold=("ome6" "ome9"  "ome12") ## C36 parameters

declare -a arrold=("phi3" "psi4"  "phi6" "psi7" "phi9" "psi10") ## C36 parameters

 
for i in {0..5} ; do
 
 echo ${arrold[i]} | mpirun -np 1 gmx_mpi angle -f ../18-input.xtc  -type dihedral -ov "${arrold[i]}_metaD.xvg" -n index_diheds.ndx
done
