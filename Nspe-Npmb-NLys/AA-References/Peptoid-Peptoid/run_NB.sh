#! /bin/bash -e

exec_fmatch="csg_fmatch"

exec_call="csg_call"

exec_stat="csg_stat"

source /path/to/bin/VOTCARC_copy.bash

mod_top=14-input.tpr
mod_trr=15-input.trr


echo Calculating distributions
$exec_stat --top ../${mod_top}  --trj ../${mod_trr} --cg  "P3.xml;water.xml;chlorine.xml"  --options settings_non_bonded_python.xml --begin 0


