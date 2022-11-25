#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../18-input.xtc --cg  "P3_NLYS_new.xml;water.xml;chlorine.xml"  --options setting_bonds_nlys.xml --begin 0


