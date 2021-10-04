# How to run these simulations?

Pre-requisites:
1. This step should be done after the C36 to C22 conversion is done.
2. Next, follow steps in P3/Charge_Assignment. Once you make all the changes to the itp file, you are ready to run simulations in this folder.


In this folder:

1. Run ./model.bash. You will use the modified Charmm folder provided by the Ferguson group. This folder already has the major MFTOID modifications 
   on the C36 FF.
2. You will get many errors. I got 100+ errors for the P3 molecule. These errors are mainly divided into 3 catregories
      - conflicts between C22 and C36. The C36 parameters can be commented out. 
      - Some parameters are hybrid (some atoms are atoms in C22, whereas the remaining are in C36 format): For example, an angle maybe of the form CT2 TC CG2R61.   Here, we will find the analogous of the angle in C36 (as in all atoms will be C36).
      - In a few instances, you will not be able to find the analogous C36 parameters. This happens for a few angles and dihedrals. In that case,find the closest 
        interaction. For example, if you have CT2 TC CG2R61, and you dont find the exact interaction in C36 parameters,i.e.,CG321 CG201 CG2R61. In this case, find the closest angle to CG321 CG201 CG2R61.
        
3. If all errors are resolved, all command in ./model.bash should be executed. You will end up with a peptoid that has been solvated, charged neutralized with ions
(if needed), and energy minimized.

4. Next run ./model_1.bash. This will be a short production run MD on your desktop. 
5. Follow this with a long production run on a supercomputer. 


For step 4 and 5, plumed data files are required. This is described in P3/Plumed
