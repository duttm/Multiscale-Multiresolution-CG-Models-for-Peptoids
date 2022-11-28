import os
import sys

import shutil

import subprocess
import string


##########################################################################


file1=open("list.txt", "w")
source= os.getcwd()

bonds= source +'/' +"BONDS"

os.chdir(bonds)

print(os.getcwd())





file1.write("<opts>-tableb ")

for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ')
    
################################################################



angles= source +'/' +"ANGLES"

os.chdir(angles)

print(os.getcwd())





file1.write("-tablea ")

for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ')
    
##################################################################


   
dihedrals= source +'/' +"DIHEDRALS"

os.chdir(dihedrals)

print(os.getcwd())





file1.write("-tabled ")

for filename in os.listdir(os.getcwd()):
    file1.write(str(filename)+ ' ') 
    
  
########################################################

file1.write('\n')    
file1.write("</opts>")  

file1.close()    
    
    
    


        
     
