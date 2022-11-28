def matcher(array_2D, code_2D,  a, NOF, cs):


    beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm"] 
    
    proxy = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm"] 
    for i in range(len(beads)):
        proxy[i] = []


    for i in range(a * NOF):
        for j in range(cs):
            if (array_2D[i][4] == code_2D[j][1]):
                for k in range(len(beads)):
                    if (code_2D[j][0] == beads[k]):
                        proxy[k].append(array_2D[i][0])
                
                
                
    return proxy            
                
    
