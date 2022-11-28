import os
import sys

import shutil

import subprocess
import string


##########################################################################


file1=open("list2.txt", "w")
source= os.getcwd()

bonds= source +'/' +"BONDS"

os.chdir(bonds)

print(os.getcwd())



file1.write("<filelist> grompp.mdp topol.top table.xvg index.ndx ")

for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ')
    
################################################################



angles= source +'/' +"ANGLES"

os.chdir(angles)

print(os.getcwd())


for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ')
    
##################################################################


   
dihedrals= source +'/' +"DIHEDRALS"

os.chdir(dihedrals)

print(os.getcwd())



for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ') 
    
    
########################################################


   
nbs= source +'/' +"NBs"

os.chdir(nbs)

print(os.getcwd())



for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ') 
    
    
########################################################

file1.write("</filelist>"+'\n')

file1.close()    
    
    
    


        
     
