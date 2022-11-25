#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../18-input.xtc --cg  "P3_angles_bb_Pseudo.xml;water.xml;chlorine.xml"  --options setting_angles_BB_pseudo.xml --begin 0


