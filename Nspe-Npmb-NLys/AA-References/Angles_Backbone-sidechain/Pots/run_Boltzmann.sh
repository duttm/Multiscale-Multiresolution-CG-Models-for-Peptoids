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
peptoid=P3_angles_BB-SC.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("YN-XBB1-A11" "A11-XBB1-XBB2" "XBB1-A11-A12" "XBB1-A11-A13" "XBB1-XBB2-C11" "C11-XBB2-XBB3" "XBB2-C11-C12" "XBB2-XBB3-A21" "A21-XBB3-XBB4" "XBB3-A21-A22" "XBB3-A21-A23" "XBB3-XBB4-A31"  "A31-XBB4-XBB5" "XBB4-A31-A32" "XBB4-A31-A33"  "XBB4-XBB5-B11" "B11-XBB5-XBB6" "XBB5-B11-B12"  "XBB5-XBB6-A41" "A41-XBB6-XBB7" "XBB6-A41-A42"  "XBB6-A41-A43" "XBB6-XBB7-A51" "A51-XBB7-XBB8"  "XBB7-A51-A52" "XBB7-A51-A53" "XBB7-XBB8-C21" "C21-XBB8-XBB9" "XBB8-C21-C22" "XBB8-XBB9-A61" "A61-XBB9-XBB10" "XBB9-A61-A62" "XBB9-A61-A63" "XBB9-XBB10-A71" "A71-XBB10-XBB11" "XBB10-A71-A72" "XBB10-A71-A73" "XBB10-XBB11-B21" "B21-XBB11-YC" "XBB11-B21-B22" "XBB11-YC-A81" "YC-A81-A82" "YC-A81-A83" ) ## C36 parameters



 
for i in {0..42} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_angles ]; then
  rm -r table_angles
fi
mkdir table_angles


for i in {0..42} ; do

 echo ${arrold[i]} | $exec_call --ia-type angle --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_angles/"table_${arrold[i]}.xvg"

done
