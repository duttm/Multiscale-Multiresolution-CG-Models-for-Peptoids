#!/bin/bash

## Usage ./wrapper.bash  <resdiue you want to see> 
## To see all residues, check out index_indentifier.txt
## Last exec: ./wrapper.bash SC7



connections="bonds_bb_sc.txt"



python letsCG.py  srug_ini.gro 1 280 280 5 5 5 $connections index_identifier.txt $1

python merge.py

rm SC*.txt BB*.txt cg.txt mass.txt mol.txt masses.txt array.txt
