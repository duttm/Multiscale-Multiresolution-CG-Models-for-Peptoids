beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm", "H", "I"] 


f = open("text.txt", "w") 


for i in range(len(beads)):
    for j in range(i,len(beads)):
        f.writelines(beads[i]+ ' '+beads[j]+ ' ')
    
f.close()