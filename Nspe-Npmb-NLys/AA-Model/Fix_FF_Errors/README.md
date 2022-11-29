# How to run these simulations?

Pre-requisites:
1. Run `C36_toC22`
2. Modify charges in `Charge_Assignment`

Transfer the latest GROMACS files into this folder, i.e. the files which have the hybrid C22 and C36 parameters + MFTOID charges on the backbone atoms.

In this folder:

1. Run ./model.bash. Please use the modified Charmm folder provided by the Ferguson group. (Zhao et al) [[1](https://dx.doi.org/10.1021/acs.jpcb.0c04567?ref=pdf)] This folder already has the major MFTOID modifications 
   on the C36 FF.
2. You will get many errors. I got 100+ errors for the P3 molecule. These errors are mainly divided into 3 categories
      - conflicts between C22 and C36. The C36 parameters can be commented out. 
      - Some parameters are hybrid (some atoms are atoms in C22, whereas the remaining are in C36 format): For example, an angle may be of the form CT2 TC CG2R61.   Here, we will find the analogous of the angle in C36 (as in all atoms will be C36).
      - In a few instances, you will not be able to find the analogous C36 parameters. This happens for a few angles and dihedrals. In that case,find the closest 
        interaction. For example, if you have CT2 TC CG2R61, and you don't find the exact interaction in C36 parameters,i.e.,CG321 CG201 CG2R61. In this case, find the closest angle to CG321 CG201 CG2R61.
        
3. If all errors are resolved, all commands in ./model.bash should be executed. You will end up with a peptoid that has been solvated, charged neutralized with ions
(if needed), and energy minimized.

4. Please rename the FF folder and use it for all further applications.


