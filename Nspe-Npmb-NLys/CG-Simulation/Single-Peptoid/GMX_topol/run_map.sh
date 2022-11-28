#! /bin/bash -e






csg_gmxtopol --top 2018.tpr --cg "P3_pseudo_bonds_new.xml;water.xml;chlorine.xml" --out out_pbonds
