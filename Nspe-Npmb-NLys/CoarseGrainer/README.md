# Automatic Coarse-graining

This code generates a mapping file (*.xml) that can be processed by VOTCA [[1](https://doi.org/10.1021/ct900369w)]. We developed an automated approach as: 

1. There are too many atoms (280) in the peptoid sequence
2. There will be higher chances of error if this step is done manually. 

## Our general approach

1. We visualize the peptoid as an undirected graph, i.e., the atoms are vertices and the bonds are edges.
2. To generate CG beads, we create disconnections in the graph. For example, if we want to create a bead for the 3rd side chain residue, we will create a disconnection between the atoms that connect the side chain to the backbone. We implement this by removing the bond that connects the side chain to the backbone. 
3. We apply the depth first search (DFS) algorithm to find all atoms that are a part of the CG bead. Essentially, DFS helps us find connections in a graph (peptoid topology in this case). 
4. Our code repeats this for all CG beads, and generates an xml file that can be processed by VOTCA. 

*Alternatively, we note that this process can be done using the [STOCK](http://stock.cmm.ki.si/) tool released by the VOTCA developers.*

 
## Running instructions: 

1. We create a list of bonds (see `bonds.txt`). This information is available in the original PDB file. 
2. We remove bonds to generate disconnections (see `bonds_bb_sc.txt`). This text file creates a single CG bead for all side chain residues. For a finer coarse-graining scheme, please see `Legacy`. 
3. All disconnections are indexed. See `index_identifier.txt`
4. Run: ``` ./wrapper.bash  <resdiue you want to see> ```

For example: if you want to see the 5th backbone bead, try: 

```./wrapper.bash  BB5```

Output: 

![5th backbone residue](BB5.png)


Addtionally, if you want to see the 7th side chain residue, try: 

```./wrapper.bash  SC7```

Output:

![7th side chain residue](SC7.png)

All runs will generate the same *.xml file that can be processed by VOTCA. The visualization feature for individual beads is for checking if we are doing the coarse-graining correctly. 

The finer mapping scheme files are kept in `Legacy`
