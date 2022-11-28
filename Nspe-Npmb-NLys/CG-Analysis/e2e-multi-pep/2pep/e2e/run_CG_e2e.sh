#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_CG_e2e.xml
W=water_CG.xml
I=chlorine_CG.xml
#step=Sim_test_IBI_bonds_angles_BIpbonds
TOP=table.tpr
TRAJ=table.xtc
begin=0

echo Calculating distributions
csg_stat --top ../${TOP}  --trj ../${TRAJ} --cg "P3_CG_e2e.xml;water_CG.xml;chlorine_CG.xml"  --options setting_bonds_0.002.xml --begin $begin


exit


cp bond-e2e-CG.dist.new Plotting/

rm bond-e2e-CG.dist.new

cd Plotting/

gnuplot e2e.p

mv P3_e2e_AAvsCG_1pep.png P3_e2e_AAvsCG_1pep_step_${step}.png

###rm bond-e2e-CG.dist.new

cd ../




