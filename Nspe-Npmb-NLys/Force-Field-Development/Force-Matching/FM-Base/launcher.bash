#!/bin/bash

rm core.*

module load anaconda3/2020.11
. $ANACONDA3HOME/etc/profile.d/conda.sh
conda activate scw_test

cd outputs/
cp *.dist.new ../
cd ../

python launcher.py $1 $2



rm *.dist.new
rm core.*
