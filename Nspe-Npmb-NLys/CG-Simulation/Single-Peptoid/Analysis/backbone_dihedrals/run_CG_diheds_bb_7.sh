#! /bin/bash -e

myArray=("Sim_test_6_9" )


for step in ${myArray[@]}; do


 TOP=table.tpr
 TRAJ=table.xtc
 begin=1000

 echo Calculating distributions
 csg_stat --top ../../${step}/${TOP}  --trj ../../${step}/${TRAJ} --cg "P3_diheds_bb.xml;water_CG.xml;chlorine_CG.xml"  --options setting_dihedrals_BB.xml --begin $begin


 cp *.new Plotting/

 rm *.new


 cd Plotting/

 gnuplot References_1_gnuplot.p
 
 mv P3_Diheds_BB.png P3_Diheds_BB_${step}.png

 rm *.new
 
 cd ../
 
done
