#!/bin/bash -e

#calculate bonded potentials with csg_boltzmann

###

starting=$1
n=$2

cd boltz/
python3 boltz_file_creator.py $starting $n
cp boltzmann_cmds_python ../
cd ../
###

cd xml/
python3 xml_writer.py
cd ../
##################


tpr=2018.tpr
##xtc=short_traj.xtc
xtc=18-input.xtc
peptoid=P3_angles_SC-SC.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("NSPE2-NSPE1-NSPE3" "NSPE1-NSPE3-NSPE5" "NSPE1-NSPE3-NSPE4" "NSPE3-NSPE4-NSPE5" "NSPE4-NSPE5-NSPE3" "NSPE5-NSPE3-NSPE4" "PMEO1-PMEO2-PMEO4" "PMEO1-PMEO2-PMEO3" "PMEO2-PMEO3-PMEO4" "PMEO3-PMEO4-PMEO2" "PMEO4-PMEO2-PMEO3" "PMEO2-PMEO3-PMEO5" "PMEO4-PMEO3-PMEO5" "NLYS1-NLYS2-NLYS3") ## C36 parameters



 
for i in {0..13} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_angles ]; then
  rm -r table_angles
fi
mkdir table_angles


for i in {0..13} ; do

 echo ${arrold[i]} | $exec_call --ia-type angle --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_angles/"table_${arrold[i]}.xvg"

done
