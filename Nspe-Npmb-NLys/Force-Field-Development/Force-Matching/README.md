# Force Matching (FM)

Input for FM: Peptoid-peptoid reference distributions (RDFs) from AA simulation. The script to generate the RDFs are placed [here](https://github.com/duttm/Multiscale-Multiresolution-CG-Models-for-Peptoids/tree/main/Nspe-Npmb-NLys/AA-References/Peptoid-Peptoid).

The FM algorithm uses splines to generate CG potentials. We need to provide inputs for the following parameters: 

1. Frames per block : The MD trajectory is decomposed into smaller blocks. Processing the entire trajectory at once is not feasible due to memory constraints.
2. Starting sampling point : In theory, this should be the first non-zero data point on the y axis of the reference distribution. However, in practice, we chose the data point that gives a good potential. Please note that the chosen data point is always amongst the first 5 non-zero points on the reference distribution.
3. Grid spacing: A lower grid spacing results in more splines, and hence better potentials. Please note that a lower grid spacing will lead to longer processing times. 

An appropriate choice of the 3 parameters yields good quality CG potentials. The values of the 3 parameters vary for each peptoid-peptoid interaction. To find the 3 parameters for each interaction, we conduct FM on all interactions separately. Then, we conduct force matching for all interactions in parallel.

First, we use the files in `FM-Base`. Here, the frames per block is fixed at 2000. We run the code using: 

```./launcher.bash <grid_spacing> <start_value>```

For example: 

```./launcher.bash 0.03 0.01```

A grid spacing of 0.03 generates approximately 30 splines. <br>
A start value of 0.01 means that the first value greater than 0.01 on the y axis is chosen for force matching. 

All possible values for the 3 parameters can be found in [here](FM-Anomalies/launcher.py)

The above technique resolves good quality potentials for 80% of the interactions. The quality of interactions are analyzed with [these screening routines](FM-Anomalies/Screener).

We apply a [brute force approach](FM-Anomalies) for the remaining potentials. Here, we try all possible combinations of the 3 parameters.


