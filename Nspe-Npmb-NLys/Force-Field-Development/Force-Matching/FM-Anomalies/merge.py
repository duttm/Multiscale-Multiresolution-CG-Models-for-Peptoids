import sys
import numpy as np

arguments = len(sys.argv) - 1
bead1 = sys.argv[1]
bead2 = sys.argv[2]
inputfilename = sys.argv[3]
# Python program to
# demonstrate merging of
# two files
  
# Creating a list of filenames
filenames = ['up.xml','middle.xml', 'down.xml']


outfilename = 'fmatch_'+str(bead1)+'_'+str(bead2)+'.xml'
# Open file3 in write mode
with open(outfilename, 'w') as outfile:
  
    # Iterate through list
    for names in filenames:
  
        # Open each file in read mode
        with open(names) as infile:
  
            # read the data from file1 and
            # file2 and write it in file3
            outfile.write(infile.read())
  
        # Add '\n' to enter data of file2
        # from next line
        outfile.write("\n")
