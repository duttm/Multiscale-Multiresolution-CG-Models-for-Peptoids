#!/bin/bash



rm SRUG_copy.str

cp SRUG.str SRUG_copy.str ## The idea is to not modify the original str file obtained from paramchem. Create a copy of it and make changes to it. I have used the copied version for all production runs.

##TC will remain TC

declare -a arrold=("CG2O1" "OG2D1" "NG2S0" "CG321" "HGA2" "CG321" "HSAL") ## C36 parameters

declare -a arrnew=("TC" "O" "NH1" "CT2" "HB2" "CT2" "HA2") ## MFTOID parameters based on C22 


echo ${arrold[0]} ${arrnew[0]}

for i in {0..6} ; do
 
 sed -i -e "s/${arrold[i]}/${arrnew[i]}/g" SRUG_copy.str; ## Simple renaming operations
done

