#!/bin/bash


a=$1
b=$2
c="${a}-${b}.dist.new"
d=$3
e=$4
f=$5



python3 up.py $f

python3 middle.py $a $b $c $d $e 

python3 merge.py $a $b $c

./run_X_X.sh $a $b


cp table_${a}_${b}.xvg table_${a}_${b}_${d}_${e}_${f}.xvg 
rm table_${a}_${b}.xvg

rm core.*
