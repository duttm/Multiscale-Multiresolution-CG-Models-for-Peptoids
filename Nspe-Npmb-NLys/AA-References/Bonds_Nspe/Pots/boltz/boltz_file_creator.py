import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["NSPE1-NSPE3", "NSPE1-NSPE2", "NSPE3-NSPE4", "NSPE4-NSPE5", "NSPE3-NSPE5"] 

start=float(sys.argv[1])
n=sys.argv[2]

boltz = "boltzmann_cmds_python"
file2 = open(boltz, "w")

file2.write('tab set T 300' + '\n')
file2.write('\n' + '\n')

for i in range(len(residue)):

    inputfilename = residue[i] + '.dist.new'
    T1, T2, T3 = np.genfromtxt(inputfilename, unpack=True)

    count = 0

    for j in range(len(T2)):
        if T2[j]>start:
            count=j
            break
        
    min=T1[j]

    count = 0


    for j in reversed(range(len(T2))):
        if T2[j]>start:
            count=j
            break
        
    max=T1[j]

   



    file2.write('tab set scale' + ' ' + str(residue[i]) + '\n')
    file2.write('tab set flag periodic' + '\n')
    file2.write('tab set auto 0' + '\n')
    file2.write('tab set min' + ' '+ str(min) + '\n')
    file2.write('tab set max' + ' '+ str(max) + '\n')
    file2.write('tab set n'+ ' ' + str(n) + '\n')
    file2.write('tab' + ' ' + str(residue[i]) + '.pot.ib' + ' ' + '*' + str(residue[i])+ '*' + '\n')
    file2.write('\n'+'\n')


      
file2.write('q')        
 

