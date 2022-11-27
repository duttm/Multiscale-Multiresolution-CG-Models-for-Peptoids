#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_angles_bb.xml
W=water_CG.xml
I=chlorine_CG.xml
step=004
TOP=topol.tpr
TRAJ=traj.xtc


echo Calculating distributions
csg_stat --top ../../step_${step}/${TOP}  --trj ../../step_${step}/${TRAJ} --cg "P3_angles_bb.xml;water_CG.xml;chlorine_CG.xml"  --options setting_angles_BB.xml --begin 0


cp *.new Plotting/

rm *.new


cd Plotting/

gnuplot ANGLES_bb.p

mv P3_Angles_BB.png P3_Angles_BB_${step}.png

rm *.new
