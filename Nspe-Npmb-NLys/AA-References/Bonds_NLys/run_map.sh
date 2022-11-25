#! /bin/bash -e




echo "Mapping confout.gro to get the starting configurations for the coarse-grained runs of ibi"
csg_map --top 2018.tpr --trj ../short_traj.xtc --cg "P3_bond_nlys.xml;water.xml;chlorine.xml" --out P3_CG.gro 
