# Ramachandran Plots

These plots are required to characterize the secondary structure of peptoids. Since the omega dihedral samples both cis and trans isomers, we need to plot separate Ramachandran plots for the 2 isomers. 

1. Collect the dihedral values using `gmx_angle` (check GROMACS documentation for details)
2. Use `divide-cis.py` and `divide-trans.py` to the create separate text files containing  dihedral values for cis and trans isomers 
3. Paste the text files into a cis/trans directory and run 

```
./FES_plotter.bash <phi.xvg> <psi.xvg> <name-of-image.png> xlabel ylabel
```

The same can be done for ome-phi and ome-psi plots. For example, see [ome8-phi3](1pep-divide-cis-trans/cis-trans/ome8-phi3)

Final result files (png files with the image of the ramachandran plot) are placed [here](https://github.com/duttm/Multiscale-Multiresolution-CG-Models-for-Peptoids/tree/main/Nspe-Npmb-NLys/CG-Analysis/Rama).
