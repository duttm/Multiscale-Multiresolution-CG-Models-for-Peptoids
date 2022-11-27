#! /bin/bash -e






csg_gmxtopol --top 2018.tpr --cg "P3_dihedrals_sc_sc.xml;water.xml;chlorine.xml" --out out_diheds_sc-sc
