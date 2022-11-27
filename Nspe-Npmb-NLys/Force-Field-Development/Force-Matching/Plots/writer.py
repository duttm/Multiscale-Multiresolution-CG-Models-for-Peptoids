import sys
import os

beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm", "I"]
##beads = ["Nterm", "BBstandard"]

output = "statusofFM.txt"
out1 = open(output, "w") 

out1.write('i' +'\t'+ 'j' +'\t'+ 'StartingPoint'+'\t'+ 'SmoothStart'+ '\n')

for i in range(len(beads)):  
          
          
          
    current=os.getcwd()
    resdir= current +'/'+ str(beads[i])
    os.chdir(resdir)

    
    
    for j in range(i,len(beads)):
         
        filename='table'+'_'+str(beads[i])+'_'+str(beads[j]) + '.xvg' 
        
            
        try:
            f=open(filename,"r")
            lines=f.readlines()
            result=[]
            for x in lines:
            
                 li=x.strip()
                 if not li.startswith("#"):
                     result.append(x.split(' ')[11].strip())
                     
            print("Current directory :", os.getcwd())
            print(result[0])
            
            if float(result[0]) > 0 and float(result[0]) != float(result[1]):
                out1.write(str(beads[i]) +'\t'+ str(beads[j]) +'\t'+ 'GOOD'+ '\t'+ 'GOOD' + '\n')
                
            elif float(result[0]) > 0 and float(result[0]) == float(result[1]):
                out1.write(str(beads[i]) +'\t'+ str(beads[j]) +'\t'+ 'GOOD'+ '\t'+ 'BAD' + '\n')
                
            elif float(result[0]) < 0:
                out1.write(str(beads[i]) +'\t'+ str(beads[j]) +'\t'+ 'AttractiveStarting'+'\t'+ 'AttractiveStarting' + '\n')   
        
            f.close()
            
        except FileNotFoundError:
            out1.write(str(beads[i]) +'\t'+ str(beads[j]) +'\t'+ 'FMdidnotwork'+'\t'+ 'FMdidnotwork' + '\n') 
            pass
        
    
   
        
    os.chdir(current)
    
        
        

        
       

      
        

