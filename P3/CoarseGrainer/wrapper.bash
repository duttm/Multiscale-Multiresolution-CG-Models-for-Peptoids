#!/bin/bash

## Usage ./wrapper.bash  <resdiue you want to see> <bond list with the cuts>
## To see all residues, check out index_indentifier.txt
## Last exec: /wrapper.bash SC_10_1_1 bonds_more_cuts_SC10.txt

## delete redundant files

rm SC*.txt BB*.txt cg.txt mass.txt mol.txt masses.txt array.txt

python letsCG.py  srug_ini.gro 1 280 280 5 5 5 $2 index_identifier.txt $1

python merge.py

rm SC*.txt BB*.txt cg.txt mass.txt mol.txt masses.txt array.txt
