# Why is there a need to change the atomic charges in the default files?

This step is required to:

1. Assign proper charge to the backbone Nitrogens. Paramchem assigns a high penalty factor to the charge on these atoms. It is critical to get this correct as 
the peptoid backbone chemistry relies on this. We assign a charge of -0.42 to the backbone Nitrogens. This detail is a part of the MFTOID FF.

2. Since we have fixed the charge on the backbone Nitrogen on the basis of the MFTOID FF, it makes sense to change the charges of the other residues too. In this way, 
our modifications will be consistent with the MFTOID FF. Please note that these changes are limited to the backbone and the first carbon on the side chain (as that
is the only information given in the MFTOID FF)

# What are the changes?

TC Set to +0.51  
O Set to -0.51  
NH1 Set to -0.42  
Backbone Ca Set to 0.03  
Sidechain Ca (Only applicable to Npmb and NLys)  Set to -0.04  


# Some other points

It is easy to identify the backbone nitrogen, carbonyl carbon and the connected oxygen. However, it is not easy to spot the backbone alpha carbon and the side chain 
alpha carbon. I used VMD to get all atom IDs. The associated hydrogens need to be documented too. 

Extra notes for the sequence:


1. Assign charge to Backbone Alpha Carbons = 0.03 and atom  ID=CT2

     Serial 1D = 3, 14, 25, 36, 47, 59, 70, 81, 82, 103, 114, 126

 2. The Alpha carbon side chains for NLys need to have a charge of -0.04, and atom ID= CT2
 
     Serial ID = 16 and 83
     
     The associated Hydrogens need to have atom ID= HA2
     
     Serial IDs = 163, 164 and 228 and 229
     
     Charges of Hydrogens are fine , i.e. 0.09
     
 3. The Alpha carbon side chains for the Npmb group should have a charge of -0.04, and atom ID= CT2
 
     Serial IDs = 116 and 49
     
     The associated Hydrogens need to have atom ID= HA2
     
     Serial IDs = 259, 260, 195 and 196
     
   # How do you neutralize the net charge back to the desired value?
   
   In the case of the Nspe-Npmb-NLys sequence, the net charge should be +2. I chose the CG2R61 aromatic carbons to adjust the charges. Please see the excel sheet for more details.
   
   


