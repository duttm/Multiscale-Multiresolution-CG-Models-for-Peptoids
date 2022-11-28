#!/bin/bash

module load gromacs/2018

SLURMPROCS=8

GRO=P3_CG_64_0.gro

TOP=topol_CG_64.top

NDX=index_64.ndx

cd POTS/

cp * ../

cd ../

mpirun -np 1 gmx_mpi grompp -f grompp.mdp -c $GRO -o table.tpr -p $TOP -n $NDX

mpirun -np $SLURMPROCS gmx_mpi mdrun -deffnm table -v -tableb table_b1212.xvg table_b116444.xvg table_b1210.xvg table_b118444.xvg table_b131.xvg table_b115444.xvg table_b123.xvg table_b117444.xvg table_b154.xvg table_b129.xvg table_b128.xvg table_b134.xvg table_b112444.xvg table_b114444.xvg table_b1112444.xvg table_b133.xvg table_b119444.xvg table_b125.xvg table_b1111444.xvg table_b1211.xvg table_b111444.xvg table_b132.xvg table_b155.xvg table_b122.xvg table_b124.xvg table_b153.xvg table_b1110444.xvg table_b152.xvg table_b141.xvg table_b142.xvg table_b127.xvg table_b135.xvg table_b151.xvg table_b126.xvg table_b113444.xvg table_b121.xvg table_a212999.xvg table_a221.xvg table_a2218.xvg table_a217999.xvg table_a224.xvg table_a2213.xvg table_a2243.xvg table_a2230.xvg table_a2219.xvg table_a2216.xvg table_a233.xvg table_a225.xvg table_a2222.xvg table_a223.xvg table_a236.xvg table_a2217.xvg table_a222.xvg table_a2210.xvg table_a218999.xvg table_a2240.xvg table_a227.xvg table_a215999.xvg table_a2215.xvg table_a234.xvg table_a231.xvg table_a2232.xvg table_a257.xvg table_a2236.xvg table_a2242.xvg table_a2233.xvg table_a211999.xvg table_a214999.xvg table_a255.xvg table_a256.xvg table_a229.xvg table_a228.xvg table_a219999.xvg table_a252.xvg table_a241.xvg table_a254.xvg table_a235.xvg table_a2231.xvg table_a2111999.xvg table_a253.xvg table_a216999.xvg table_a2234.xvg table_a2224.xvg table_a2110999.xvg table_a2241.xvg table_a2226.xvg table_a2239.xvg table_a2237.xvg table_a2223.xvg table_a251.xvg table_a2235.xvg table_a2212.xvg table_a2228.xvg table_a2229.xvg table_a232.xvg table_a2238.xvg table_a2225.xvg table_a2220.xvg table_a2211.xvg table_a2227.xvg table_a2214.xvg table_a226.xvg table_a2221.xvg table_a213999.xvg table_d413.xvg table_d411.xvg table_d416.xvg table_d417.xvg table_d415.xvg table_d419.xvg table_d412.xvg table_d4110.xvg table_d418.xvg table_d414.xvg table_d4210.xvg table_d4215.xvg table_d421.xvg table_d425.xvg table_d4211.xvg table_d4216.xvg table_d4220.xvg table_d426.xvg table_d4212.xvg table_d4217.xvg table_d422.xvg table_d427.xvg table_d4213.xvg table_d4218.xvg table_d423.xvg table_d428.xvg table_d4214.xvg table_d4219.xvg table_d424.xvg table_d429.xvg table_d431.xvg table_d432.xvg table_d433.xvg table_d434.xvg table_a261.xvg table_a262.xvg table_a263.xvg table_a264.xvg table_a265.xvg table_a266.xvg table_a267.xvg table_a268.xvg table_a269.xvg



rm *.xvg







