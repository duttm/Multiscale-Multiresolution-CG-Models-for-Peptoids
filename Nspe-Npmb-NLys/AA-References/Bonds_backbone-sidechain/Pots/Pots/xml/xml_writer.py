import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["bond-XBB1-A11", "bond-XBB2-C11", "bond-XBB3-A21", "bond-XBB4-A31", "bond-XBB5-B11", "bond-XBB6-A41", "bond-XBB7-A51", "bond-XBB8-C21", "bond-XBB9-A61", "bond-XBB10-A71", "bond-XBB11-B21", "bond-YC-A81"] 


min=0
max=1.2


for i in range(len(residue)):

    xmlfile = residue[i]+'.xml'
    file2 = open(xmlfile, "w")
    
    file2.write('<cg>'+ '\n')
    file2.write('<bonded>'+ '\n')
    file2.write('<!-- name of the interaction -->'+ '\n')
    file2.write('<name>'+ str(residue[i]) + '</name>' '\n')
    file2.write('<min>'+ str(min) + '</min>' '\n')
    file2.write('<max>'+ str(max) + '</max>' '\n')
    file2.write('<step>0.001</step>' '\n')
    file2.write('</bonded>'+ '\n')
    file2.write('<inverse>'+ '\n')
    file2.write('<gromacs>'+ '\n')
    file2.write('<pot_max>1e8</pot_max>'+ '\n')
    file2.write('<table_end>4.0</table_end>'+ '\n')
    file2.write('<table_bins>0.002</table_bins>'+ '\n')
    file2.write('</gromacs>'+ '\n')
    file2.write('</inverse>'+ '\n')
    file2.write('</cg>'+ '\n')
    
    file2.close()     
 

