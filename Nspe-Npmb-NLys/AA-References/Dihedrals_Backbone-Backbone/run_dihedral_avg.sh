#! /bin/bash -e


TRJ="18-input.xtc"

echo Calculating distributions
csg_stat --top ../TPR/2018.tpr  --trj ../$TRJ --cg  "P3_dihedrals_bb_avg.xml;water.xml;chlorine.xml"  --options setting_dihedrals_BB_avg.xml --begin 0


