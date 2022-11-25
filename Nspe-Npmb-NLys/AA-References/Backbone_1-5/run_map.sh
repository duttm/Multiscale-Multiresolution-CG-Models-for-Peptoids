#! /bin/bash -e




echo "Mapping confout.gro to get the starting configurations for the coarse-grained runs of ibi"
csg_map --top 2018.tpr --trj 12-input.gro --cg "P3_new.xml;water.xml;chlorine.xml" --out P3_CG.gro 
