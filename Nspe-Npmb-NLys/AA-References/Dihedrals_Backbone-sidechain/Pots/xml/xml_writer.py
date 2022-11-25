import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["A13-A11-BB1-BB2", "BB1-BB2-C11-C12", "A23-A21-BB3-BB4", "BB2-BB3-A21-A22", "A33-A31-XBB4-XBB5", "BB3-BB4-A31-A32", "A43-A41-BB6-BB7", "BB4-BB5-B11-B12", "A53-A51-BB7-BB8", "BB5-BB6-A41-A42", "A63-A61-BB9-BB10", "BB6-BB7-A51-A52", "A73-A71-BB10-BB11", "BB7-BB8-C21-C22", "A83-A81-YC-BB11", "BB8-BB9-A61-A62", "BB10-BB11-B21-B22", "BB9-BB10-A71-A73", "BB11-YC-A81-A82", "YN-BB1-A11-A12"] 
min=-3.1415
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
    file2.write('<step>0.1</step>' '\n')
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
 

