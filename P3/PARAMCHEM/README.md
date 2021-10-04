# Why PARAMCHEM?

PARAMCHEM gives us the closest fit Charmm36(C36) parameters for our P3 molecule. It provides a penalty factor for each parameter (e.g. charge of an atom, force constant
of a bonded interaction, etc.) A high penalty factor associated to a parameter would mean that it needs to be refined. 

In our case, majoirty of the high penalty factor parameters (charge of backbone hydrogen, backbone dihedrals, etc.) are specific to the peptoid backbone. These 
parameters have been defined by the MFTOID FF. Hence, we replace these high penalty factor parameters with MFTOID parameters.

Inputs for the PARAMCHEM webserver: https://cgenff.umaryland.edu/

1. mol2
2. pdb

Outputs

1. mol2
2. str

Ideally, the latest C36 folder should be used for all steps beyond this step. I have attached the C36 I used for this process. 

