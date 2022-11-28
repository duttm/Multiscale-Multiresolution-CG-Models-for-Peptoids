
import sys
import numpy as np
import os


from read_file import *
from indexcode import *
from matcher import *
from writer import *

# Press the green button in the gutter to run the script.
if __name__ == '__main__':

    # Get input arguments from a text file
    arguments = len(sys.argv) - 1
    inputfilename = sys.argv[1]
    secondinputfilename = sys.argv[2]

    filename = inputfilename

    print('The name of the file is %s' % (filename))

    fp = open(filename)
    line_count = 0
    for i, line in enumerate(fp):
        if i == 1:
            a = int(line.strip())

        if line != "\n":
            line_count += 1

    fp.close()
    print('No. of elements in a single frame is %s' % (a))
    NOF = 1



######### Read input file and convert into the deriable dimensions #############

    array_2D = read_file(filename, NOF, a, "nothing")
    code_2D, cs = code_file(secondinputfilename)
    proxy = matcher(array_2D, code_2D, a, NOF, cs)
    writer(proxy)
    














