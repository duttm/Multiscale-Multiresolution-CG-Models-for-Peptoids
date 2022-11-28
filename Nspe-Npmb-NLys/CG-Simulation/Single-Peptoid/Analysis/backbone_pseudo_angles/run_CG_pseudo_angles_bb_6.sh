#! /bin/bash -e


myArray=("Sim_test_6_0" "Sim_test_6_1" "Sim_test_6_2" "Sim_test_6_4" "Sim_test_6_5" "Sim_test_6_6" "Sim_test_6_7" "Sim_test_6_8" "Sim_test_6_9" "Sim_test_6_10" )

for step in ${myArray[@]}; do

 
  P3=P3_angles_pseudo_bb.xml
  W=water_CG.xml
  I=chlorine_CG.xml
  ##let step=arrold[i]
  TOP=table.tpr
  TRAJ=table.xtc
  begin=1000
  pwd
  
  echo $step
  echo Calculating distributions
  csg_stat --top ../../${step}/${TOP}  --trj ../../${step}/${TRAJ} --cg "P3_angles_pseudo_bb.xml;water_CG.xml;chlorine_CG.xml"  --options setting_angles_BB_pseudo.xml --begin $begin
 
  

  cp *.new Plotting/

  rm *.new


  cd Plotting/

  gnuplot Pseudo_angles.p

  mv P3_Angles_Pseudo.png P3_Angles_Pseudo_${step}.png

  rm *.new

  cd ../

done  
