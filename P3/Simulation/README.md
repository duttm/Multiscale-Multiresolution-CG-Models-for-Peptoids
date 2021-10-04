# How to run these simulations?

Pre-requisites:
1. This step should be done after the C36 to C22 conversion is done. Use the pdb file generated after conversion for this simulation.
2. Next, follow steps in P3/Charge_assignment. Once you make all the changes to the itp file, you are readu to run simulations in this folder.


In this folder:

1. Run ./model.bash. You will use the modified Charmm folder provided by the Ferguson group. This folder already has the major MFTOID modifications 
   on the C36 FF.
2. You will get many errors. I got 100+ errors for the P3 molecule. These errors are mainly divided into 3 catregories
       a. conflicts between C22 and C36. The C36 parameters can be commented out. 
       b. Some parameters with half half and half atoms of C22 and C36: For example, an angle maybe of the form CT2 TC CG2R61. Here, we will find the analogous of the
          angle in C36 (as in all atoms will be C36).
       c. In a few instances, you will not be able to find the analogous C36 parameters. This happens for a few angles and dihedrals. In that case,find the closest 
       interaction and use it to define the interaction. For example, if you have CT2 TC CG2R61, and you dont find the exact interaction in C36 parameters, i.e., CG321 CG201 CG2R61. In this case, find the closest angle to CG321 CG201 CG2R61.

