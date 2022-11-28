import sys


file1 = open("text.txt", "w") 

#######################################################################

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
typecol = []
rescol = []
for x in lines:
    typecol.append(x.split('\t')[1].strip())
    rescol.append(x.split('\t')[4].strip())
    
f.close()


#########################################################################


for i in range(len(typecol)):


### Write Main Topology

    file1.write("<cg_bead>"+'\n')
    file1.write("<name>" + str(rescol[i]) + "</name>" +'\n')
    file1.write("<type>" + str(typecol[i]) + "</type>" +'\n')
    file1.write("<mapping>" + "UNITY" + "</mapping>" +'\n')
    file1.write("<beads>"+'\n')
    file1.write("1:P3:"+str(rescol[i]) + '\n'  )
    file1.write("</beads>"+'\n')    
    file1.write("</cg_bead>"+'\n')
    file1.write('\n'+'\n')    
        



    
file1.close()
