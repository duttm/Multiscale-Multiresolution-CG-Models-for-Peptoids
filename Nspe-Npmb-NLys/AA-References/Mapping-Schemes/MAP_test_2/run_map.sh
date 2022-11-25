#! /bin/bash -e




echo "Mapping confout.gro to get the starting configurations for the coarse-grained runs of ibi"
csg_map --top 2018.tpr --trj ../5-input.gro --cg "P3_new-1.xml;water.xml;chlorine.xml" --out P3_CG_Start.gro 

csg_map --top 2018.tpr --trj ../14-input.gro --cg "P3_new-1.xml;water.xml;chlorine.xml" --out P3_CG_relaxed.gro 
