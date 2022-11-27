#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc


begin=$1
P3=P3_bond_mod1.xml
W=water_CG.xml
I=chlorine_CG.xml
step=009
TOP=topol.tpr
TRAJ=traj.xtc

echo Calculating distributions
csg_stat --top ../../step_${step}/${TOP}  --trj ../../step_${step}/${TRAJ} --cg "P3_bond_mod1.xml;water_CG.xml;chlorine_CG.xml"  --options setting_bonds_0.002.xml --begin $begin

cp *.new Plotting/

rm *.new

cd Plotting/



gnuplot bpot.p

mv P3_Bonds.png P3_Backbone_Bonds${step}.png

rm *.new
