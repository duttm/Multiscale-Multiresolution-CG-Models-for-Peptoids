#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../14-input.xtc --cg  "P3_bond_term.xml;water.xml;chlorine.xml"  --options setting_bonds_term.xml --begin 0


