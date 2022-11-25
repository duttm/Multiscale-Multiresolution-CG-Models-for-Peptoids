# Why is Plumed required? 

Plumed is used to implement an enhanced sampling technique known as Metadynamics. Why do we need MetaD? :The omega dihedral in a peptoid backbone, i.e.,
Calpha - Carbonyl_carbon- Nitrogen - Calpha needs to sample cis and trans isomerization states. A unbiased MD simulation cannot do so
within a reasonable amount of time. MetaD helps in sampling both cis and trans states of the omega dihedral within a minimum of 20 ns.

The MetaD potentials are not only limited to the omega dihedrals. They are also applied on the psi,phi and side chain dihedral angles (guided by Ferguson et al).

Since all these dihedrals need to be indexed by their serial IDs, a script is required. 

I have made meta_file_generator.py.

You need the following inputs:

1. a set of text files with the serial IDs of the dihedrals. Each type of dihedral needs to be in a separate text file. (Please see omega.txt and psi.txt)

How to run the python script:

python meta_file_generator.py -i <number of atoms in 1 peptoid> -o <number of peptoids> -p <name of sample pdb>
  
The name of the pdb file can be found in P3/Simulation. It will be in the format residue_ini.pdb
  
  

