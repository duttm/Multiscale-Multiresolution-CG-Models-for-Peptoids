import numpy as np
import sys
from matplotlib import pyplot as plt

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
omey = []
omex = []
for x in lines:
    omey.append(x.split()[1].strip())
    omex.append(x.split()[0].strip())
f.close()


inputfilename = sys.argv[2]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
phiy = []
phix = []
for x in lines:
    phiy.append(x.split()[1].strip())
    phix.append(x.split()[0].strip())
f.close()

inputfilename = sys.argv[3]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
psiy = []
psix = []
for x in lines:
    psiy.append(x.split()[1].strip())
    psix.append(x.split()[0].strip())
f.close()


textfile = "cis_phi.txt"

file_out = open(textfile, "w")

cutoff= 90

for l in range(len(omey)):

    if ( float(omey[l]) <= 90 and float(omey[l]) >= -90 ):
        file_out.writelines(str(omex[l]) + '\t' + str(phiy[l]) + '\n')

file_out.close()

textfile = "cis_psi.txt"

file_out = open(textfile, "w")

cutoff= 90

for l in range(len(omey)):

    if ( float(omey[l]) <= 90 and float(omey[l]) >= -90 ):
        file_out.writelines(str(omex[l]) + '\t' + str(psiy[l]) + '\n')

file_out.close()
