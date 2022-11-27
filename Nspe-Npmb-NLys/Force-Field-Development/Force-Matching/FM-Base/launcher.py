import os
import sys

import shutil

import subprocess

arguments = len(sys.argv) - 1
grid = sys.argv[1]
start = sys.argv[2]
 
beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm"] 
 

count = 0
for i in range(len(beads)):
    for j in range(i,len(beads)):
    
    
        ##print("./FM_initial.bash"+' '+str(beads[i])+' '+str(beads[j]) + '\n')
        ##subprocess.check_call(['./FM_initial.bash', str(beads[i]), str(beads[j])])
        
        
        try:
            subprocess.check_call(['./FM_initial.bash', str(beads[i]), str(beads[j]), str(grid), str(start)])
        except Exception:
            pass
        
