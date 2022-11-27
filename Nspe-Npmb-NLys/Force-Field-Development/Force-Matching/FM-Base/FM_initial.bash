#!/bin/bash

module load anaconda3/2020.11
. $ANACONDA3HOME/etc/profile.d/conda.sh
conda activate scw_test
a=$1
b=$2
c="${a}-${b}.dist.new"
d=$3
e=$4




python middle.py $a $b $c $d $e

python merge.py $a $b $c

./run_X_X.sh $a $b

rm core.*
