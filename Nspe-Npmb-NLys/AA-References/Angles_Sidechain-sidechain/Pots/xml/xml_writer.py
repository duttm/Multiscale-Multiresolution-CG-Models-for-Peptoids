import sys
import numpy as np

arguments = len(sys.argv) - 1
residue =  ["NSPE2-NSPE1-NSPE3", "NSPE1-NSPE3-NSPE5", "NSPE1-NSPE3-NSPE4", "NSPE3-NSPE4-NSPE5", "NSPE4-NSPE5-NSPE3", "NSPE5-NSPE3-NSPE4", "PMEO1-PMEO2-PMEO4", "PMEO1-PMEO2-PMEO3", "PMEO2-PMEO3-PMEO4", "PMEO3-PMEO4-PMEO2", "PMEO4-PMEO2-PMEO3", "PMEO2-PMEO3-PMEO5", "PMEO4-PMEO3-PMEO5", "NLYS1-NLYS2-NLYS3"]   
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
 

