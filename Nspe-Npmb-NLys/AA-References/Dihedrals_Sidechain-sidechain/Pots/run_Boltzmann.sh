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
peptoid=P3_dihedrals_sc_sc.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("A2-A1-A3-A5" "A1-A3-A4-A5" "B1-B2-B3-B4" "B2-B3-B5-B4")


for i in {0..3} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_dihedrals ]; then
  rm -r table_dihedrals
fi
mkdir table_dihedrals


for i in {0..3} ; do

 echo ${arrold[i]} | $exec_call --ia-type dihedral --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_dihedrals/"table_${arrold[i]}.xvg"

done
