#!/bin/bash

## Please note that charge assignment to the backbone atoms can be done in 2 ways:

## 1. Either make them in the str file so that when ./22to36converter.bash is executed, the new charges will reflect in the itp file.
## 2. Or do everything once the itp file is generated. In other words, copy paste contents of the itp file to an excel spread sheet and gradually implement all changes. 
## I would prefer the latter as I already have an excel file which guides the entire process.


rm SRUG_copy.str ##would need to change name of file. This naming depends on the residue name. 

cp SRUG.str SRUG_copy.str ## The idea is to not modify the original str file obtained from paramchem. Create a copy of it and make changes to it. I have used the copied version for all production runs.

##TC will remain TC

declare -a arrold=("CG2O1" "OG2D1" "NG2S0" "CG321" "HGA2" "CG321" "HSAL") ## C36 parameters

declare -a arrnew=("TC" "O" "NH1" "CT2" "HB2" "CT2" "HA2") ## MFTOID parameters based on C22 


echo ${arrold[0]} ${arrnew[0]}

for i in {0..6} ; do
 
 sed -i -e "s/${arrold[i]}/${arrnew[i]}/g" SRUG_copy.str; ## Simple renaming operations
done

