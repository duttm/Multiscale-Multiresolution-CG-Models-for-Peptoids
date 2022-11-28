import os
import sys

import shutil

import subprocess
import string

#output = "gnuplotnamer.txt"
#out1 = open(output, "w") 

##########################################################################


arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
real = []
new= []
for x in lines:
    real.append(x.split('\t')[0].strip())
    new.append(x.split('\t')[1].strip())
    
f.close()

print(real)





##########################################################################
original = 'Backbone'
parent = 'COPY'

print(os.getcwd())

source=os.getcwd()
path = os.getcwd() + '/' + parent

isExist = os.path.exists(path)


 
if isExist:
    shutil.rmtree(path)
    
isExist = os.path.exists(path)
    
if not isExist:    
    subprocess.check_call(['mkdir', parent])
    print (os.getcwd())

os.chdir(original)

print(os.getcwd())



for filename in os.listdir(os.getcwd()):
    filenamemod=filename+'.xvg'
    
    ##print(filename)
    
    source1 = source + '/' + original + '/' +  filename
    
    shutil.copy(source1, path)
    
    #os.chdir(path)
    #subprocess.check_call(['mv', filename, filenamemod])
    #os.chdir(source)
    
os.chdir(path)


    
for filename in os.listdir(os.getcwd()):
    
    
    for i in range(len(real)):
    
       
        if (filename == 'table_' + str(real[i]) + '.xvg'):
            
            try:
                filenamemod='table_' + str(new[i]) + '.xvg'
                subprocess.check_call(['mv', filename, filenamemod])
            except Exception:
                pass
    
    ##print(filename)
    
    
    


        
     
