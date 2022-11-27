#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_CG_e2e.xml
W=water_CG.xml
I=chlorine_CG.xml
step=010

echo Calculating distributions
csg_stat --top ../../step_${step}/topol.tpr  --trj ../../step_${step}/traj.xtc --cg "P3_CG_e2e.xml;water_CG.xml;chlorine_CG.xml"  --options setting_bonds_0.002.xml --begin 0


