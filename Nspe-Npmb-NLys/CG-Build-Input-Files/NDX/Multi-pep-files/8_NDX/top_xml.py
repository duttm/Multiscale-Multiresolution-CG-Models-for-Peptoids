import sys


beads = ["Nterm", "BBstandard", "NSPE1", "NSPE2", "NSPE3", "NSPE4", "NSPE5", "NLYS1", "NLYS2", "NLYS3", "PMEO1", "PMEO2", "PMEO3", "PMEO4", "PMEO5", "Cterm", "I"] 

file1 = open("top.xml","w")

file1.write("<cg>"+'\n')

file1.write("  <!-- example for a non-bonded interaction entry -->"+'\n')

for i in range(len(beads)):


### Write Main Topology

    file1.write('  '+"<non-bonded>"+'\n')
    file1.write('    '+"<!-- name of the interaction -->"+'\n')
    file1.write('    '+"<name>"+str(beads[i])+"-H</name>"+'\n')
    file1.write('    '+"<!-- types involved in this interaction -->"+'\n')
    file1.write('    '+"<type1>"+str(beads[i])+"</type1>"+'\n')
    file1.write('    '+"<type2>H</type2>"+'\n')
    file1.write('    '+ "<!-- dimension + grid spacing of tables for calculations -->" +'\n')
    file1.write('    '+ "<min>0.0</min>" +'\n')
    file1.write('    '+ "<max>1.0</max>" +'\n')
    file1.write('    '+ "<step>0.02</step>" +'\n')
    file1.write('    '+ "<inverse>" +'\n')
    file1.write('      '+ "<!-- target distribution (rdf), just give gromas rdf.xvg -->" +'\n')
    file1.write('      '+ "<target>" + str(beads[i]) + "-H.dist.target</target>" +'\n')
    file1.write('      '+ "<!-- update cycles -->" +'\n')
    file1.write('      '+ "<do_potential>1</do_potential>" +'\n')
    file1.write('      '+ "<!-- additional post processing of dU before added to potential -->" +'\n')
    file1.write('      '+ "<post_update></post_update>" +'\n')
    file1.write('      '+ "<!-- additional post processing of U after dU added to potential -->" +'\n')
    file1.write('      '+ "<post_add></post_add>" +'\n')
    file1.write('      '+ "<!-- name of the table for gromacs run -->" +'\n')
    file1.write('      '+ "<gromacs>" +'\n')
    file1.write('        '+ "<table>table_" + str(beads[i]) + "_H.xvg" +'\n')
    file1.write('       '+ "</table>" +'\n')
    file1.write('      '+ "</gromacs>" +'\n')
    file1.write('     '+ "</inverse>" +'\n')
    file1.write('    '+ "</non-bonded>" +'\n')
    file1.write('\n')
    
    
    
    




    
file1.close()
