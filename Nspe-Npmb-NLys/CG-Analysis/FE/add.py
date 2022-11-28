import sys

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]
# output argument-wise
f = open(inputfilename, "r")
lines = f.readlines()
args = []
args1 = []
for x in lines:
    args.append(float(x.split(' ')[1].strip()))
    args1.append(float(x.split(' ')[0].strip()))
f.close()

minimum=(min(args))

output_textfile = inputfilename+"_mod"
file_out = open(output_textfile, "w")

for k in range(len(args)):
    file_out.writelines(str(args1[k]) + ' '+str((-1*minimum)+args[k])+'\n')

file_out.close()
