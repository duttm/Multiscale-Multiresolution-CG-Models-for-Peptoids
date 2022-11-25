import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["YN-XBB1-A11", "A11-XBB1-XBB2", "XBB1-A11-A12", "XBB1-A11-A13", "XBB1-XBB2-C11", "C11-XBB2-XBB3", "XBB2-C11-C12", "XBB2-XBB3-A21", "A21-XBB3-XBB4", "XBB3-A21-A22", "XBB3-A21-A23", "XBB3-XBB4-A31" , "A31-XBB4-XBB5", "XBB4-A31-A32", "XBB4-A31-A33" , "XBB4-XBB5-B11", "B11-XBB5-XBB6", "XBB5-B11-B12" , "XBB5-XBB6-A41", "A41-XBB6-XBB7", "XBB6-A41-A42" , "XBB6-A41-A43", "XBB6-XBB7-A51", "A51-XBB7-XBB8" , "XBB7-A51-A52", "XBB7-A51-A53", "XBB7-XBB8-C21", "C21-XBB8-XBB9", "XBB8-C21-C22", "XBB8-XBB9-A61", "A61-XBB9-XBB10", "XBB9-A61-A62", "XBB9-A61-A63", "XBB9-XBB10-A71", "A71-XBB10-XBB11", "XBB10-A71-A72", "XBB10-A71-A73", "XBB10-XBB11-B21", "B21-XBB11-YC", "XBB11-B21-B22", "XBB11-YC-A81", "YC-A81-A82", "YC-A81-A83"]   
min=0
max=3.1415


for i in range(len(residue)):

    xmlfile = residue[i]+'.xml'
    file2 = open(xmlfile, "w")
    
    file2.write('<cg>'+ '\n')
    file2.write('<bonded>'+ '\n')
    file2.write('<!-- name of the interaction -->'+ '\n')
    file2.write('<name>'+ str(residue[i]) + '</name>' '\n')
    file2.write('<min>'+ str(min) + '</min>' '\n')
    file2.write('<max>'+ str(max) + '</max>' '\n')
    file2.write('<step>0.01</step>' '\n')
    file2.write('</bonded>'+ '\n')
    file2.write('<inverse>'+ '\n')
    file2.write('<gromacs>'+ '\n')
    file2.write('<pot_max>1e8</pot_max>'+ '\n')
    file2.write('<table_end>180.0</table_end>'+ '\n')
    file2.write('<table_bins>0.05</table_bins>'+ '\n')
    file2.write('</gromacs>'+ '\n')
    file2.write('</inverse>'+ '\n')
    file2.write('</cg>'+ '\n')
    
    file2.close()     
 

