#! /bin/bash -e


step="Sim_test_6_9"



P3=P3_CG_e2e.xml
W=water_CG.xml
I=chlorine_CG.xml
TOP=table.tpr
TRAJ=table.xtc
begin=99000



echo Calculating distributions
csg_stat --top ../../${step}/${TOP} --trj ../../${step}/${TRAJ} --cg  "P3_CG_e2e.xml;water_CG.xml;chlorine_CG.xml" --options setting_water.xml --begin  $begin 


