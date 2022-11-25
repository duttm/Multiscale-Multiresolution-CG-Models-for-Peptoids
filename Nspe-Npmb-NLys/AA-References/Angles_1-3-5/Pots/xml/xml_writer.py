import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =   [ "BB1-BB3-BB5", "BB2-BB4-BB6", "BB3-BB5-BB7", "BB4-BB6-BB8", "BB5-BB7-BB9", "BB6-BB8-BB10",  "BB7-BB9-BB11", "BB8-BB10-YC"]


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
 
