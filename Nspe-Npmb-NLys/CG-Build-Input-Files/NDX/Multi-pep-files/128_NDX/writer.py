def writer(proxy):

    beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm"]
    
    file1 = open("indexadd.ndx", "w")
    
    
    counter = 0
    
    for i in range(len(beads)):
        file1.write("[ "+str(beads[i])+" ]" + '\n')
        for j in range(len(proxy[i])):
            file1.write(str(proxy[i][j])+ ' ')
            counter += 1
            if counter >10:
            
                counter = 0 
                file1.write('\n')
            
        file1.write('\n')    
            
    file1.close()
    
