import sys
import numpy as np

arguments = len(sys.argv) - 1
bead1 = sys.argv[1]
bead2 = sys.argv[2]
inputfilename = sys.argv[3]
grid_size=float(sys.argv[4])
start=float(sys.argv[5])

masses = "middle.xml"
file2 = open(masses, "w")

file2.write('<non-bonded>'+'\n')
file2.write('<name>'+str(bead1)+'-'+str(bead2)+'</name>'+'\n')
file2.write('<type1>'+str(bead1)+'</type1>'+'\n')
file2.write('<type2>'+str(bead2)+'</type2>'+'\n')
file2.write('<min>0.0</min>'+'\n')
file2.write('<max>2.5</max>'+'\n')
file2.write('<step>0.01</step>'+'\n')  
 
file2.write('<!-- fmatch specific stuff -->'+'\n') 
file2.write('<fmatch>'+'\n')
file2.write('<min>'+str(start)+'</min>'+'\n')
file2.write('<max>'+str(1.2)+'</max>'+'\n')
file2.write('<step>'+str(grid_size)+'</step>'+'\n')
file2.write('<out_step>0.002</out_step>'+'\n')
file2.write('</fmatch>'+'\n')
file2.write('</non-bonded>'+'\n')
      
        
 

