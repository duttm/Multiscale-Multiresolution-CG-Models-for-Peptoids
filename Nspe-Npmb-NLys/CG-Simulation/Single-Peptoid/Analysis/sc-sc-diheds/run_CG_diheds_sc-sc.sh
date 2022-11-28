#! /bin/bash -e

myArray=("Sim_test_6_9" )


for step in ${myArray[@]}; do


 TOP=table.tpr
 TRAJ=table.xtc
 begin=5000

 echo Calculating distributions
 csg_stat --top ../../${step}/${TOP}  --trj ../../${step}/${TRAJ} --cg "P3_diheds_sc-sc.xml;water_CG.xml;chlorine_CG.xml"  --options setting_dihedrals_sc-sc.xml --begin $begin


 cp *.new Plotting/

 #rm *.new


 cd Plotting/

 gnuplot diheds-sc-sc.p
 
 mv P3_Diheds_SC-SC_1.png P3_Diheds_SC_SC_${step}.png

 rm *.new
 
 cd ../
 
done
