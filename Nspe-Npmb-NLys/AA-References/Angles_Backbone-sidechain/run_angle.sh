#! /bin/bash -e


rm *.new

##xtc=short_traj.xtc
xtc=18-input.xtc


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../${xtc} --cg  "P3_angles_BB-SC.xml;water.xml;chlorine.xml"  --options setting_angles_BB-SC.xml --begin 0


