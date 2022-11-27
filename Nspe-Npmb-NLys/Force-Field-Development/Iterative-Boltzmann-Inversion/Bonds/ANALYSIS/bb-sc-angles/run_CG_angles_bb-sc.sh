#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_angles_bb-sc.xml
W=water_CG.xml
I=chlorine_CG.xml
step=091

echo Calculating distributions
csg_stat --top ../../../step_${step}/table.tpr  --trj ../../../step_${step}/table.xtc --cg "P3_angles_bb-sc.xml;water_CG.xml;chlorine_CG.xml"  --options setting_angles_BB-SC.xml --begin 0


cp *.new Plotting/

rm *.new

cd Plotting/

gnuplot References_1_gnuplot.p

gnuplot References_2_gnuplot.p



rm *.new
