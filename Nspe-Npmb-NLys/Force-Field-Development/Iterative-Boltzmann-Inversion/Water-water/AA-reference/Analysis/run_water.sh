#! /bin/bash -e


echo Calculating distributions
csg_stat --top water.tpr  --trj ../5-input.xtc --cg  "water.xml" --options setting_water.xml --begin  10000 


