# The Workflow is:

1. ChemDraw: Generate the chemical sequence and copy the SMILES code
2. Avogadro: Paste the SMILES code -> generate the molecule-> relax it and remove overlaps -> dump .mol2 and .pdb files
3. PARAMCHEM: Use the mol2 and pdb file to get an str file. Download the latest Charmm FF from the webserver (or the Charmm website)
4. C36_to_C22: Convert the C36 paramaters (mainly on the peptoid backbone) to C22 paramaters. Use the python script to convert the str and mol2/pdb files to GROMACS input files.
5. Charge_Assignment: Fix the charges in the residue.itp file.
6. Plumed: Generate a plumed file for the peptoid. This is required for Metadynamics simulations. (This step can be postponed until the production run on a supercomputer)
7. Fix_FF_Errors: With the modified files (latest atom types and charges), run a simulation -> get errors -> resolve them as per the given guidelines -> generate the FF folder which seamlessly works for the peptoid molecule.
8. Simulation: Run production runs 
9. Peptoid_Sim_Builder: Generate multi-peptoid simulation files. 
