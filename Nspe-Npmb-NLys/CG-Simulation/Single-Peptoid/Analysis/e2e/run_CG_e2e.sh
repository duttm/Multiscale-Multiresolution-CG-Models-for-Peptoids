#! /bin/bash -e

myArray=("Sim_test_2" "Sim_test_3_1993" "Sim_test_4_2" "Sim_test_5_2" "Sim_test_6_2" "Sim_test_7_2" "Sim_test_1" "Sim_test_2_1993" "Sim_test_4_0" "Sim_test_5_0" "Sim_test_6_0" "Sim_test_7_0" "Sim_test_1_1993" "Sim_test_3" "Sim_test_4_1" "Sim_test_5_1" "Sim_test_6_1" "Sim_test_7_1")

for step in ${myArray[@]}; do

 P3=P3_CG_e2e.xml
 W=water_CG.xml
 I=chlorine_CG.xml
 TOP=table.tpr
 TRAJ=table.xtc
 begin=1000

 echo Calculating distributions
 csg_stat --top ../../${step}/${TOP}  --trj ../../${step}/${TRAJ} --cg "P3_CG_e2e.xml;water_CG.xml;chlorine_CG.xml"  --options setting_bonds_0.002.xml --begin $begin


 cp bond-e2e-CG.dist.new Plotting/

 rm bond-e2e-CG.dist.new

 cd Plotting/

 gnuplot e2e.p

 mv P3_e2e_AAvsCG_1pep.png P3_e2e_AAvsCG_1pep_step_${step}.png

 rm bond-e2e-CG.dist.new

 cd ../

done


