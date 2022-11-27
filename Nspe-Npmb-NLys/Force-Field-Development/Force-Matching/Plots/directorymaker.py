import os
import sys

import shutil

import subprocess


beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm", "I"]


parent = 'table'


for i in range(len(beads)):

    dir_path = os.getcwd() + '/' +str(beads[i])
    
    isExist = os.path.exists(dir_path)
    
    if isExist:
        shutil.rmtree(dir_path)

    
 
for i in range(len(beads)-1):
    for j in range(i,len(beads)):
    
 
        path = os.getcwd() + '/' +str(beads[i])
    
        isExist = os.path.exists(path)
    
        if not isExist:
    
        
            subprocess.check_call(['mkdir', str(beads[i])])
            print (os.getcwd())
        
        
        
        
        
        try:
            source = os.getcwd() + '/' +'table' + '/' + 'table_' + str(beads[i]) + '_' + str(beads[j]) + '.xvg'
            shutil.copy(source, path)
        except FileNotFoundError:
            pass
        
    
        
    
        
     
