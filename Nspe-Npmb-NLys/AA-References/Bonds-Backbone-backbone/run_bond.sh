#! /bin/bash -e


echo Calculating distributions
csg_stat --top 2018.tpr  --trj ../18-input.xtc --cg  "P3_bond_mod1.xml;water.xml;chlorine.xml"  --options setting_bonds_0.002.xml --begin 0


