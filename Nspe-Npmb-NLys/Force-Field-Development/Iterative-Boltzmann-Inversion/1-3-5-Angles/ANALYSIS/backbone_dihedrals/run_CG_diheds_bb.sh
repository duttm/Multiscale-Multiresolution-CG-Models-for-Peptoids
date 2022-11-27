#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_diheds_bb.xml
W=water_CG.xml
I=chlorine_CG.xml
step=091

echo Calculating distributions
csg_stat --top ../../../step_${step}/table.tpr  --trj ../../../step_${step}/table.xtc --cg "P3_diheds_bb.xml;water_CG.xml;chlorine_CG.xml"  --options setting_dihedrals_BB.xml --begin 0

cp *.new Plotting/

rm *.new


cd Plotting/

gnuplot References_1_gnuplot.p

rm *.new
