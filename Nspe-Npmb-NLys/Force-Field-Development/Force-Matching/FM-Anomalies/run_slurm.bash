#!/usr/bin/env bash

bead1=$1
bead2=$2

sbatch --export=bead1=$bead1,bead2=$bead2 Prod_launcher.bash


