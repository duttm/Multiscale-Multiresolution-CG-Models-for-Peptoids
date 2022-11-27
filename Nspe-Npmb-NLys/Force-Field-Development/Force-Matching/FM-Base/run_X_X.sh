#! /bin/bash -e


X=$1
Y=$2

mod_top=14-input.tpr
mod_trr=traj.trr
exec_fmatch="csg_fmatch"

exec_call="csg_call"

source /expanse/lustre/projects/XXXXXXXXXX/akash12/DL-pH/7_8_2021/test2/spack/opt/spack/linux-centos8-zen2/gcc-10.2.0/votca-tools-stable-pnmqbynymso3mkklq5kfmgkvhx7ykkmf/bin/VOTCARC_copy.bash




echo "Running force matching"
$exec_fmatch --top ../${mod_top} --trj ../${mod_trr} --begin 100  --options fmatch_${X}_${Y}.xml --cg "P3.xml;water.xml;chlorine.xml"

#integrate force tables to get potential
$exec_call table integrate ${X}-${Y}.force ${X}-${Y}.pot
$exec_call table linearop ${X}-${Y}.pot ${X}-${Y}.pot -1 0


cp ${X}-${Y}.pot input_${X}-${Y}.pot


$exec_call --ia-type non-bonded --ia-name ${X}-${Y} --options fmatch_${X}_${Y}.xml convert_potential gromacs --clean input_${X}-${Y}.pot table_${X}_${Y}.xvg


