# Why is Plumed required? 

Plumed is needed to operate an enhanced sampling technique known as metadynamics. The omega dihedral in a peptoid backbone, i.e.,
Calpha - Carbonyl_carbon- Nitrogen - Calpha needs to sample cis and trans isomerization states. A unbiased MD simulation cannot do so
within a reasonable amount of time. Metadynamics helps in sampling both cis and trans states of the omega dihedral within a minimum of 20 ns.

The metadynamic potentials are not only limited to the omega dihedrals. They are also applied on the psi,phi and dihedral angles. 
Since all these dihedrals needs to be indexed by their serial IDs, a script is required. 

I have made meta_file_generator.py.

You need the following inputs:

1. a set of text files with the serial IDS of the dihedrals. Each type of dihedral needs to be in a separate text file. (Please see omega.txt and psi.txt)

How to run the python script:

python meta_file_generator.py -i <number of atoms in 1 peptoid> -o <number of peptoids> -p <name of sample pdd>
  
The name of the pdb file is the output of the python code that converts PARAMCHEM files to GROMACS files.

