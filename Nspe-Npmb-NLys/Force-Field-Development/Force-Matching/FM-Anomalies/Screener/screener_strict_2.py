import os
import sys

import shutil

import subprocess

output = "strict_2_output.txt"
out1 = open(output, "w") 

parent = 'table'

print(os.getcwd())

source=os.getcwd()
path = os.getcwd() + '/' + parent


dest = os.getcwd() + '/' + 'strict_2_screened'
isExist = os.path.exists(dest)


 
if isExist:
    shutil.rmtree(dest)
    
isExist = os.path.exists(dest)
    
if not isExist:    
    subprocess.check_call(['mkdir', 'strict_2_screened'])
    


os.chdir(path)

print(os.getcwd())


for filename in os.listdir(os.getcwd()):
   with open(os.path.join(os.getcwd(), filename), 'r') as f: # open in readonly mode
       
       
      
           ###f=open(filename,"r")
       lines=f.readlines()
       result=[]
       
       for x in lines:
           
           try:
               li=x.strip()
           
               if not li.startswith("#"):               
                   result.append(x.split(' ')[11].strip())
           except IndexError:
               result.append(-1)
               pass      
                     
       
       if (result[0] != ''):
           if float(result[0]) > 1000:
               if (float(result[0]) != float(result[1])):
                   out1.write(filename+'\n')   
           
                   filename_success=filename
           ##except IndexError:
               ##pass    
 

os.chdir(source)

origin=source + '/' + parent + '/' + filename_success



shutil.copy(origin, dest)
        
     
