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
peptoid=P3_angles_bb_Pseudo.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("BB1-BB3-BB5" "BB2-BB4-BB6" "BB3-BB5-BB7" "BB4-BB6-BB8" "BB5-BB7-BB9" "BB6-BB8-BB10"  "BB7-BB9-BB11" "BB8-BB10-YC")


 
for i in {0..7} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_angles ]; then
  rm -r table_angles
fi
mkdir table_angles


for i in {0..7} ; do

 echo ${arrold[i]} | $exec_call --ia-type angle --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_angles/"table_${arrold[i]}.xvg"

done
