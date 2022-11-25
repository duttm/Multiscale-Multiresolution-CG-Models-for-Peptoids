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
peptoid=P3_BB_SC.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("bond-XBB1-A11"  "bond-XBB2-C11" "bond-XBB3-A21" "bond-XBB4-A31" "bond-XBB5-B11" "bond-XBB6-A41" "bond-XBB7-A51" "bond-XBB8-C21" "bond-XBB9-A61" "bond-XBB10-A71" "bond-XBB11-B21" "bond-YC-A81") ## C36 parameters




 
for i in {0..11} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_bonds ]; then
  rm -r table_bonds
fi
mkdir table_bonds


for i in {0..11} ; do

 echo ${arrold[i]} | $exec_call --ia-type bond --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_bonds/"table_${arrold[i]}.xvg"

done
