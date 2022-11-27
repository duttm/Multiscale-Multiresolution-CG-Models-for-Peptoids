import os
import sys
import shutil
import subprocess
import string






##########################################################################
##original = 'Backbone'
parent = 'References_2'

print(os.getcwd())

source=os.getcwd()
path = os.getcwd() + '/' + parent



os.chdir(path)

print(os.getcwd())

store = []

for filename in os.listdir(os.getcwd()):
    store.append(filename.split('.')[0].strip())
    
os.chdir(source)    
    
output = parent+ ".txt"
out1 = open(output, "w") 



for i in range(len(store)):

    out1.writelines("set xlabel " + '"'+ str(store[i]) + '"'+ " font " + '"' + "Times-New-Roman,10"+ '" ' +"offset -1,0.5" + '\n')
    out1.writelines("set label 1 " + "'(" + str(i) + ")'" + " at graph -0.38,0.85 font " + '"' + "Times-New-Roman,14" +'"' + '\n')
    out1.writelines("plot" + " '" + "References/" + str(store[i]) + ".dist.tgt" + "'" + " using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title" + ' "' + "AA" + '"' +" lt rgb " + '"' + "black" + '"' + " linewidth 1, " + "'" + str(store[i]) + ".dist.new" + "'" +   " using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title" + ' "' +"CG"+ '"' + " lt rgb " +  '"' + "red" + '"' + " linewidth 1" + '\n')
    out1.writelines('\n')
    

    
    
    
