# Cluster Count Analysis of Peptoid Aggregates

## Objective: 

Calculate the number of clusters of peptoids as a function of time 

## Procedure 

1. Generate cluster count data using gmx clustsize
2. Collate the cluster count data using bash scripts
3. Plot the data using a python scipt

## Generate cluster count data: 

Use gmx clustersize

```
gmx_mpi clustsize -f <xtc file> -s <tpr file> -nc <name of output file> -cut 1.2 -n <index file>
```

## Data wranging and plotting: 

If you have multiple files with cluster count data, you would need to systematically compile them.
We have automated data wrangling and plotting with the script `cluster_merger.bash`

Run the script with all data files as input arguments: 

```
./cluster_merger.bash number_of_clusters_1.xvg number_of_clusters_2.xvg number_of_clusters_3.xvg
```

The script `cluster_merger.bash` is a wrapper around a python script that takes care of plotting the clustering data. <br>
The script dumps an image file (`clusters.png`) where the number of clusters are plotted against the simulation time steps. 

## Coding techniques: 

1. awk commands: pre-processing cluster count data files.
2. python lists: storing the data
3. Matplotlib: plotting the data
