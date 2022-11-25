#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../18-input.xtc --cg  "P3_dihedrals_sc_sc.xml;water.xml;chlorine.xml"  --options setting_dihedrals_sc_sc.xml --begin 0


