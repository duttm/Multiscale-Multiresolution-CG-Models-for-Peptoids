import sys


beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm", "I"]

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]

index = beads.index(inputfilename)

masses = "filenames.txt"
file2 = open(masses, "w")

count = 0

file2.write('filenames ='+' '+'"')

for i in range(index,index+1):
    for j in range(i,int(len(beads))):
    
   
        file2.write("table_"+str(beads[i])+'_'+str(beads[j])+ ' ')
        
        count = count + 1

      
        
 
file2.write('"'+ '\n')


file2.write('filenameslit ='+' '+'"')

for i in range(index,index+1):
    for j in range(i,int(len(beads))):
    
   
        file2.write(str(beads[i])+'-'+str(beads[j])+ ' ')
        
        

      
        
 
file2.write('"')

print(str(count))
