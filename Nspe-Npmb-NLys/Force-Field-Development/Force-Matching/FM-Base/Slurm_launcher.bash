#!/usr/bin/env bash
#SBATCH --job-name=FMserial
#SBATCH --account=XXXXXXXXXX
#SBATCH --partition=shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=64
#SBATCH --time=48:00:00
#SBATCH --output=output.out


echo "${grid} is here"

echo "${start} is here"

rm core.*

module load anaconda3/2020.11
. $ANACONDA3HOME/etc/profile.d/conda.sh
conda activate scw_test

cd outputs/
cp *.dist.new ../
cd ../

python launcher.py $grid $start



rm *.dist.new
rm core.*
