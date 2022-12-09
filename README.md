# Multiscale-Multiresolution-CG-Models-for-Peptoids

This repository consists of files required to build and analyze CG models for peptoids. Our model is tested on a sequence containing Nspe, Npmb and NLys residues. [[1](https://doi.org/10.1039/C3OB40561C)] In future, more peptoid sequences will be added to this repository.

Our coarse-graining workflow is: 

1. [AA Model](Nspe-Npmb-NLys/AA-Model) : First, we build an AA model using the MFTOID force field. 

2. [AA-References](Nspe-Npmb-NLys/AA-References): Next, we sample the AA trajectories and store the data as reference distributions. For example, to sample the structure of a nonbonded pairwise interaction, we measure the radial distribution function (RDF) of the interaction. We call the RDF as the AA-reference for the given interaction.

3. [CoarseGrainer](Nspe-Npmb-NLys/CoarseGrainer): We have built an in-house code for automatic coarse graining. This means that the mapping, bonded definitions, etc are automatically defined. This is essentially as there are more than 300 interaction potentials in the peptoid sequence. (A manual approach will be time consuming and prone to errors)

4. [CG-Build-Input-Files](Nspe-Npmb-NLys/CG-Build-Input-Files): To run CG simulations, we need to create the CG input files. Since there are an excessive number of interactions in this peptoid, we employed scripts to automate the input file generation process. 

5. [Force-Field-Development](Nspe-Npmb-NLys/Force-Field-Development): We have used Force Matching (FM) [[2](https://doi.org/10.1021/jp044629q)] and Iterative Boltzmann Inversion (IBI) [[3](https://doi.org/10.1002/1439-7641(20020916)3:9%3C754::AID-CPHC754%3E3.0.CO;2-U),[4](https://doi.org/10.1002/jcc.10307)] to derive CG potentials. Both coarse-graining techniques are implememted using the VOTCA [[5](https://doi.org/10.1021/ct900369w)] package. 

6. [CG-Simulation](Nspe-Npmb-NLys/CG-Simulation): We have included files required to run a CG simulation for: a) a single peptoid system in aqueous solution and b) 64 peptoids in aqueous solution.  

7. [CG-Analysis](Nspe-Npmb-NLys/CG-Analysis) : We analyze local and overall properties of the CG model. For example, we compare the end-to-end distance of the peptoid across AA and CG resolutions. 

## Issues and Support

If you believe you have found a bug, please open a ticket [here](https://github.com/duttm/Multiscale-Multiresolution-CG-Models-for-Peptoids/issues)

For other feedback, please send an email to the authors:

Akash Banerjee (Graduate Student): akashbanerji@gmail.com

Meenakshi Dutt (Principal Investigator): meenakshi.dutt@rutgers.edu 

## Acknowledgements

The developers gratefully acknowledge financial support from the National Science Foundation (NSF) CAREER award DMR-1654325 and NSF OAC-1835449 

Thank you for using our coarse-graining toolkit!



