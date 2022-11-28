#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_angles_sc-sc.xml
W=water_CG.xml
I=chlorine_CG.xml
step="Sim_test_6_9"
begin=5000

echo Calculating distributions
csg_stat --top ../../${step}/table.tpr  --trj ../../${step}/table.xtc --cg "P3_angles_sc-sc.xml;water_CG.xml;chlorine_CG.xml"  --options setting_angles_SC-SC.xml --begin $5000


cp *.new Plotting/

rm *.new

cd Plotting/

gnuplot References_1_gnuplot.p




rm *.new
