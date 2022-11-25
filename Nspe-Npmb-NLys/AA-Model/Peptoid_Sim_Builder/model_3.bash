#!/bin/bash


module load gromacs/2020.2-cpu


start=9
skip=2
###################### NPT 300 20 ns 2 fs lots of traj #####################################

i=$((start+skip-2))

echo $i
GRO=$i-input.gro
tpr=$((++i))-input
minim=mdp/nptRUN.mdp
top=drug.top
out=$((++i))-input

#Replace below "em" by your input file name

mpirun -np 1 gmx_mpi grompp -f $minim  -c $GRO -p $top -o $tpr 

mpirun -np 32 gmx_mpi mdrun -v -deffnm $out -s $tpr -ntomp 1 -nice 0 -plumed plumed_pb_new.dat





###########################################################################################

 
