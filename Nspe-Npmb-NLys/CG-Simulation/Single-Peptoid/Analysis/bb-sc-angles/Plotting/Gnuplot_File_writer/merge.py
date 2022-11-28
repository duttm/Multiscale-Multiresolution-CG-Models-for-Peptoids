import sys
import numpy as np

arguments = len(sys.argv) - 1
up_file = sys.argv[1]
mid_file = sys.argv[2]

# Python program to
# demonstrate merging of
# two files
  
# Creating a list of filenames
filenames = [up_file,mid_file]


outfilename = mid_file + "_gnuplot.xml"
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
