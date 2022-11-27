import os
import sys

import shutil

import subprocess


beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm"]


parent = 'table'


path = os.getcwd() + '/' + 'Screened_Pots'
isExist = os.path.exists(path)


 
if isExist:
    shutil.rmtree(path)
    
isExist = os.path.exists(path)
    
if not isExist:    
    subprocess.check_call(['mkdir', 'Screened_Pots'])
    print (os.getcwd())


file="statusofFM.txt"

f=open(file,"r")

next(f)
lines=f.readlines()
result=[]
for x in lines:

    source = os.getcwd() + '/' + parent + '/' + 'table_' + str(x.split('\t')[0]) + '_' + str(x.split('\t')[1]) + '.xvg'
    
    
    if (x.split('\t')[2]=="GOOD"):
    
    
        if (x.split('\t')[3].strip()=="GOOD"):
            
            
            shutil.copy(source, path)
            
f.close()
    

        
    
        
     
