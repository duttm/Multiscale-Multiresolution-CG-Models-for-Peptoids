#!/bin/bash


./22to36converter.bash ## will generate residue_copy.str


python cgenff_charmm2gmx_py3_nx2.py SRUG SRUG.mol2 SRUG_copy.str charmm36-nov2016.ff/ ## Will generate GROMACS input files.
