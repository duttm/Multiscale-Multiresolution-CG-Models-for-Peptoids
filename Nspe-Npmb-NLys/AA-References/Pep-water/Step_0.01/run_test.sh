#!/bin/bash -e


top=2018.tpr
##trj=18-input.xtc
trj=short_traj.xtc


echo Calculating distributions
csg_stat --top ${top}  --trj ../../${trj} --cg  "P3_NB.xml;water.xml;chlorine.xml"  --options setting_pep-water.xml --begin 100000

mkdir Dists

cp *.new Dists/
rm *.new




