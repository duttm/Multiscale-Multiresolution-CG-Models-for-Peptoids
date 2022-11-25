# Why is conversion from Charmm36(C36) to Charmm22(C22) required?

We follow the MFTOID FF for simulating peptoids. This FF is reliable as it has been extensively cited in the Peptoid litrature.
The MFTOID FF is essentially 7 modifications on the regular peptide Charmm22 FF. Currently, the Charmm group strongly recommmends only using the latest version of Charmm, i.e. C36. Hence, to use the MFTOID FF, and respect the Charmm guidlines, we need to create a FF which has both C22 and C36 paramaters. The general idea is that C22 paramaters will be used to define the peptoid backbone (as per the MFTOID FF) and C36 parameters will be used to define the side chain parameters.

# Are there any issues caused by using both C22 and C36 paramaters?

To avoid errors due to the hybrid paramaters, we ensure that the final results of these simulations is consistent with litrature:

1. The cis to trans isomerization free energy is validated against experimental findings. 
2. The secondary structure of peptoids in a concentrated solution (helical conformation) is validated against experimental findings.
3. The side chain dihedral distribution is validated against another computational study (Weiser et al).

Finally, this approach is adopted by other groups too. Specially, Ferguson et al have provided simulation files that clearly show the usage of both C22 and C36 parameters. 


  
  
# Running Instructions

run ./driver.bash. This has 2 script

1. ./22to36converter.bash : will generate residue_copy.str
2. python cgenff_charmm2gmx_py3_nx2.py SRUG SRUG.mol2 SRUG_copy.str charmm36-nov2016.ff/ : Will generate GROMACS input files.

The next step is to fix the charges as per MFTOID guidelines in P3/Charge_Assignment
