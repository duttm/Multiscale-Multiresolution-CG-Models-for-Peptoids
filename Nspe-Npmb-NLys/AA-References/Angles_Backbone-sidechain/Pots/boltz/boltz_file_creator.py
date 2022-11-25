import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["YN-XBB1-A11", "A11-XBB1-XBB2", "XBB1-A11-A12", "XBB1-A11-A13", "XBB1-XBB2-C11", "C11-XBB2-XBB3", "XBB2-C11-C12", "XBB2-XBB3-A21", "A21-XBB3-XBB4", "XBB3-A21-A22", "XBB3-A21-A23", "XBB3-XBB4-A31" , "A31-XBB4-XBB5", "XBB4-A31-A32", "XBB4-A31-A33" , "XBB4-XBB5-B11", "B11-XBB5-XBB6", "XBB5-B11-B12" , "XBB5-XBB6-A41", "A41-XBB6-XBB7", "XBB6-A41-A42" , "XBB6-A41-A43", "XBB6-XBB7-A51", "A51-XBB7-XBB8" , "XBB7-A51-A52", "XBB7-A51-A53", "XBB7-XBB8-C21", "C21-XBB8-XBB9", "XBB8-C21-C22", "XBB8-XBB9-A61", "A61-XBB9-XBB10", "XBB9-A61-A62", "XBB9-A61-A63", "XBB9-XBB10-A71", "A71-XBB10-XBB11", "XBB10-A71-A72", "XBB10-A71-A73", "XBB10-XBB11-B21", "B21-XBB11-YC", "XBB11-B21-B22", "XBB11-YC-A81", "YC-A81-A82", "YC-A81-A83"] 

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
 

