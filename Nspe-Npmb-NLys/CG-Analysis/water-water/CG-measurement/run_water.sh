#! /bin/bash -e


echo Calculating distributions
csg_stat --top ../topol.tpr  --trj ../traj.xtc --cg  "water_CG.xml" --options setting_water.xml --begin  100 


