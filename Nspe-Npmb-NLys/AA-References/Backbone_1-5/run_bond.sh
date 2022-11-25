#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../18-input.xtc --cg  "P3_pseudo_bonds_new.xml;water.xml;chlorine.xml"  --options setting_pseudo_bonds.xml --begin 0


