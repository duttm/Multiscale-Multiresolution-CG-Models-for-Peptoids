# Force field development 

We have developed the CG force field (FF) using the [VOTCA](https://www.votca.org/csg/introduction.html) package. We use 2 types of coarse-graining techniques: 

1. [Force matching (FM)](Force-Matching):  We use FM to develop CG potentials for peptoid-peptoid, ion-peptoid and ion-ion interactions. This is a force-based method. 
2. [Boltzmann Inversion (BI) and Iterative Boltzmann Inversion (IBI)](Iterative-Boltzmann-Inversion): We use these 2 techniques to resolve the water-water,ion-water, peptoid-water, bonds, angles, dihedrals and special bonded interactions. 
