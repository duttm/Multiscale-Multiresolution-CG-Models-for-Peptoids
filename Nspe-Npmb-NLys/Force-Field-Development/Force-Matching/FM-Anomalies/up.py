import sys
import numpy as np

arguments = len(sys.argv) - 1
fbs=int(sys.argv[1])

masses = "up.xml"
file2 = open(masses, "w")

file2.write('<cg>'+'\n')
file2.write('<!-- fmatch section -->'+'\n')
file2.write('<fmatch>'+'\n')
file2.write('<!-- use constraint LS solver -->'+'\n')
file2.write('<constrainedLS>true</constrainedLS>'+'\n')
file2.write('<!-- Number of frames for block averaging -->'+'\n')
file2.write('<frames_per_block>'+str(fbs)+'</frames_per_block>'+'\n')
file2.write('</fmatch>'+'\n')




      
        
 

