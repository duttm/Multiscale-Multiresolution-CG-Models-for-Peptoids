#! /bin/bash -e

##TOP=../../step_100/topol.tpr
##TRJ=../../step_100/traj.xtc

P3=P3_CG_e2e.xml
W=water_CG.xml
I=chlorine_CG.xml
step=150

echo Calculating distributions
csg_stat --top ../../step_${step}/topol.tpr  --trj ../../step_${step}/traj.xtc --cg "P3_CG_e2e.xml;water_CG.xml;chlorine_CG.xml"  --options setting_pep-water.xml --begin 0

cp BBstandard-H.dist.new Plotting/
cp Cterm-H.dist.new Plotting/
cp Nterm-H.dist.new Plotting/
cp NSPE3-H.dist.new Plotting/
cp PMEO3-H.dist.new Plotting/
cp NLYS2-H.dist.new Plotting/

rm *.new

cd Plotting/

gnuplot pw.p

rm *.new

mv P3_pw_AAvsCG_1pep.png P3_pw_AAvsCG_1pep_step_${step}.png




