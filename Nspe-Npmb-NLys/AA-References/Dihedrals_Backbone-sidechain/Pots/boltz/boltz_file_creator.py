import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["A13-A11-BB1-BB2", "BB1-BB2-C11-C12", "A23-A21-BB3-BB4", "BB2-BB3-A21-A22", "A33-A31-XBB4-XBB5", "BB3-BB4-A31-A32", "A43-A41-BB6-BB7", "BB4-BB5-B11-B12", "A53-A51-BB7-BB8", "BB5-BB6-A41-A42", "A63-A61-BB9-BB10", "BB6-BB7-A51-A52", "A73-A71-BB10-BB11", "BB7-BB8-C21-C22", "A83-A81-YC-BB11", "BB8-BB9-A61-A62", "BB10-BB11-B21-B22", "BB9-BB10-A71-A73", "BB11-YC-A81-A82", "YN-BB1-A11-A12"]


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
 

