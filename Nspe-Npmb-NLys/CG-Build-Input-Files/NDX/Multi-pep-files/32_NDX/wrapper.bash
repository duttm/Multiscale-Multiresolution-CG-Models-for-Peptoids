#!/bin/bash


input_gro=$1

name_ndx=$2

gmx make_ndx -f ${input_gro}  -o index_orig.ndx

python3.5 driver.py ${input_gro} read_P3_top.txt

cat index_orig.ndx indexadd.ndx > $name_ndx


rm indexadd.ndx
rm index_orig.ndx

rm -r __pycache__

rm *#*
 
