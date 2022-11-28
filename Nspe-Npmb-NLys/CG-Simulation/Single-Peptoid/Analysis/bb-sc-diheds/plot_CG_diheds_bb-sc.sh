#! /bin/bash -e

myArray=("Sim_test_6_9" )


for step in ${myArray[@]}; do


 TOP=table.tpr
 TRAJ=table.xtc
 begin=5000

 echo Calculating distributions
 ##csg_stat --top ../../${step}/${TOP}  --trj ../../${step}/${TRAJ} --cg "P3_diheds_bb-sc.xml;water_CG.xml;chlorine_CG.xml"  --options setting_dihedrals_BB-SC.xml --begin $begin


 cp *.new Plotting/

 #rm *.new


 cd Plotting/

 gnuplot diheds-bb-sc.p
 
 mv P3_Diheds_BB-SC_1.png P3_Diheds_BB_SC_${step}.png

 rm *.new
 
 cd ../
 
done
