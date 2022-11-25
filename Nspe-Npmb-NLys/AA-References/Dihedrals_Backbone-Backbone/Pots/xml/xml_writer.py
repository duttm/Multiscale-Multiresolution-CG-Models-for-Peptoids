import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["YN-BB1-BB2-BB3", "BB1-BB2-BB3-BB4", "BB2-BB3-BB4-BB5", "BB3-BB4-BB5-BB6", "BB4-BB5-BB6-BB7", "BB5-BB6-BB7-BB8", "BB6-BB7-BB8-BB9", "BB7-BB8-BB9-BB10", "BB8-BB9-BB10-BB11", "BB9-BB10-BB11-YC"]   
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
 

