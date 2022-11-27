#!/usr/bin/env bash

grid=$1
start=$2

bead1=$3

bead2=$4

cd outputs/
cp *.dist.new ../
cd ../

./FM_initial.bash $bead1 $bead2 $grid $start

rm *.dist.new
