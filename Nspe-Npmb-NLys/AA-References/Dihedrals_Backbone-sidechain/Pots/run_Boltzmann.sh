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
peptoid=P3_dihedrals_bb.xml
water=water.xml
ions=chlorine.xml

exec_boltzmann="csg_boltzmann"
exec_call="csg_call"




$exec_boltzmann --top ${tpr} --trj ../../${xtc} --cg "${peptoid};${water};${ions}"  < boltzmann_cmds_python




declare -a arrold=("A13-A11-BB1-BB2" "BB1-BB2-C11-C12" "A23-A21-BB3-BB4" "BB2-BB3-A21-A22" "A33-A31-XBB4-XBB5" "BB3-BB4-A31-A32" "A43-A41-BB6-BB7" "BB4-BB5-B11-B12" "A53-A51-BB7-BB8" "BB5-BB6-A41-A42" "A63-A61-BB9-BB10" "BB6-BB7-A51-A52" "A73-A71-BB10-BB11" "BB7-BB8-C21-C22" "A83-A81-YC-BB11" "BB8-BB9-A61-A62" "BB10-BB11-B21-B22" "BB9-BB10-A71-A73" "BB11-YC-A81-A82" "YN-BB1-A11-A12")




 
for i in {0..19} ; do
 
 echo ${arrold[i]} | $exec_call --sloppy-tables table smooth "${arrold[i]}.pot.ib" "input_${arrold[i]}.pot"
 echo "input_${arrold[i]}.pot"
done




#convert bonded potentials to GROMACS tables
if [ -d table_dihedrals ]; then
  rm -r table_dihedrals
fi
mkdir table_dihedrals


for i in {0..19} ; do

 echo ${arrold[i]} | $exec_call --ia-type dihedral --ia-name ${arrold[i]} --options xml/"${arrold[i]}.xml" convert_potential gromacs --clean "input_${arrold[i]}.pot" ./table_dihedrals/"table_${arrold[i]}.xvg"

done
