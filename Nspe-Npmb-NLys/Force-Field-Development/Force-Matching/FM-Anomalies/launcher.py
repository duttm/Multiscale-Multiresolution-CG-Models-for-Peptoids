import os
import sys

import shutil

import subprocess

arguments = len(sys.argv) - 1

 
beads = [str(sys.argv[1]), str(sys.argv[2])] 
grid1 = ["0.4", "0.2", "0.1","0.09", "0.08", "0.07","0.06", "0.05", "0.04","0.03", "0.02", "0.01" ]
start1 = ["0.0","0.01", "0.02", "0.03","0.04", "0.05", "0.06","0.07", "0.08", "0.09","0.1", "0.11", "0.12", "0.13","0.14", "0.15", "0.16","0.17", "0.18", "0.19","0.2", "0.21", "0.22","0.23", "0.24", "0.25", "0.26","0.27", "0.28", "0.29","0.30", "0.31", "0.32","0.33", "0.34", "0.35","0.36", "0.37", "0.38", "0.39", "0.40" ]
fbs1= ["100", "200","400", "500", "600", "700","800", "900", "1000", "1500", "2000", "3000", "4000", "5000", "6000", "7000", "8000", "9000"]
 

count = 0
for i in range(len(beads)):
    for j in range(i+1,len(beads)):
        for k in range(len(grid1)):
            for l in range(len(start1)):
                for m in range(len(fbs1)):
            
    
    
       
        
                    try:
                        subprocess.check_call(['./FM_initial.bash', str(beads[i]), str(beads[j]), str(grid1[k]), str(start1[l]), str(fbs1[m])])
                    except Exception:
                        pass
        
