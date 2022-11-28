import sys


def code_file(filename):

#######################################################################


    inputfilename = filename
    # output argument-wise
    f = open(inputfilename, "r")
    lines = f.readlines()
    typecol = []
    rescol = []
    for x in lines:
        typecol.append(x.split('\t')[1].strip())
        rescol.append(x.split('\t')[4].strip())
    
    f.close()


#########################################################################

    rows, cols = (len(typecol), 2)
    code = [[0 for i in range(cols)] for j in range(rows)]


    for i in range(len(typecol)):

        code[i][0] = typecol[i]
        code[i][1] = rescol[i]

        
    return code, len(typecol)
