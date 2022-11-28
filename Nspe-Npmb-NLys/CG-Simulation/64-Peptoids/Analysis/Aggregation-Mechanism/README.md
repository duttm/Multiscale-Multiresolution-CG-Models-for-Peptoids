## List of calculations:

To better understand the mechanism of peptoid self-assembly, we have studied

1. Number of NSPE-NSPE interactions as a function time.
2. Number of PMEO-PMEO interactions as a function time.
3. Number of NLYS-NLYS interactions as a function time.
4. Number of NSPE-Water interactions as a function time.
5. Number of PMEO-Water interactions as a function time.
6. Number of NLYS-Water interactions as a function time.

Go to the appropriate folder and run: 
```
./interaction_merger.bash <first.xvg> <second.xvg> <third.xvg> <name of interaction> <number of resdiues>
```
For example:
```
./interaction_merger.bash NLYS2-H_1.xvg NLYS2-H_2.xvg NLYS2-H_3.xvg NLYS2-H 128
```

**NPSE**: Chiral aromatic ring <br>
**PMEO**: Achiral aromatic ring <br>
**NLYS**: Lysine <br>

All of the above calculations are compared with number of clusters (as a function of time). 


## Compare "Clusters" and "Interactions":

Now, we can compare the number of clusters and interactions as a function of time. The objective is to identify the dominate interaction that governs clustering. 

Go to the appropriate directiy and run: 

```
python 2axis.py <merged-cluster-count-file> <merged-interaction-count-file> <number of residues>  > <name of image>
```

For example:
```
python 2axis.py cluster-count_merged.txt NLYS2-NLYS2_merged.txt 128  > cluster_vs_NLYS
```
