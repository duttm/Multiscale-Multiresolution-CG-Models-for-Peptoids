#!/usr/bin/env bash

## Execution: ./run_slurm.bash <grid> <starting value>

grid=$1
start=$2

tar xvf outputs.tar.gz

sbatch --export=grid=$grid,start=$start Slurm_launcher.bash


