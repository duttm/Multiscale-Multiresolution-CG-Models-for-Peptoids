#!/usr/bin/python

import sys, getopt

##last exec: python meta_file_generator.py -i 280 -o 3 -p srug_ini.pdb

def main(argv):
    length = ''
    nop = ''
    pdb = ''
    try:
        opts, args = getopt.getopt(argv, "hi:o:p:", ["ifile=", "ofile=", "pfile="])
    except getopt.GetoptError:
        print("python3 main.py -i <length of peptoid> -o <number of peptoids> -p <pdb file>")
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print("python3 main.py -i <length of peptoid> -o <number of peptoids> -p <pdb file>")
            sys.exit()
        elif opt in ("-i", "--ifile"):
            length = arg
        elif opt in ("-o", "--ofile"):
            nop = arg
        elif opt in ("-p", "--pfile"):
            pdb = arg
    # print 'Input file is "', length
    # print 'Output file is "', nop

    return int(length), int(nop), pdb


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


def read(nof):
    # Use a breakpoint in the code line below to debug your script.
    print('reading text file')  # Press Ctrl+F8 to toggle the breakpoint.

    with open(nof, "r") as filestream:
        lines = []
        for line in filestream:
            currentline = line.split(",")
            total = str(int(currentline[0]) + int(currentline[1]) + int(currentline[2])) + "\n"
            lines.append(currentline)

    return lines


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

    [length, nop, pdb] = main(sys.argv[1:])

    # length = int(sys.argv[1])
    # nop = int(sys.argv[2])

    ome = read('ome.txt')
    psi = read('psi.txt')
    phi = read('phi.txt')
    nspe = read('Nspe.txt')
    npme = read('Npme.txt')
    nlys = read('NLys.txt')

    p = 1
    q = 1
    r = 1
    s = 1
    t = 1
    u = 1
    with open("pb_devel_out.dat", "w") as file1:
        # Writing data to a file

        file1.write("##provides info on the molecules present in the system##\n")
        file1.write("MOLINFO MOLTYPE=protein STRUCTURE=" + str(pdb) +'\n')

        file1.write("WHOLEMOLECULES")



        for i in range(nop-1):
            file1.write(' ' + "ENTITY" + str(i) + '='  + str(1+(length*i)) + '-' + str(length+(length*i)) +',')

        for i in range(nop-1,nop):
            file1.write(' ' + "ENTITY" + str(i) + '=' + str(1+(length*i)) + '-' + str(length+(length*i)) )

        file1.write("\n \n \n")


        for x in range(nop):

            file1.write("##ome is calpha to calpha \n")

            file1.write("\n \n \n")

            for line in ome:
                file1.write(
                    "{0},{1},{2},{3}".format('ome' + str(p) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                p = p + 1

            file1.write("\n \n \n")

            file1.write("## psi is nitrogen to nitrogen \n")

            for line in psi:
                file1.write(
                    "{0},{1},{2},{3}".format('psi' + str(q) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                q = q + 1

            file1.write("\n \n \n")

            file1.write("##phi is carbonyl carbon to carbonyl carbon \n")

            for line in phi:
                file1.write(
                    "{0},{1},{2},{3}".format('phi' + str(r) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                r = r + 1

            file1.write("\n \n \n")

            file1.write("# dihedral between peptoid backbone and side chain residues \n")

            for line in nspe:
                file1.write(
                    "{0},{1},{2},{3}".format('nspe' + str(s) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                s = s + 1

            for line in npme:
                file1.write(
                    "{0},{1},{2},{3}".format('npme' + str(t) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                t = t + 1

            for line in nlys:
                file1.write(
                    "{0},{1},{2},{3}".format('nlys' + str(u) + ': TORSION ATOMS=' + str(int(line[0]) + (length * x)),
                                             str(int(line[1]) + (length * x)),
                                             str(int(line[2]) + (length * x)),
                                             '{0}\n'.format(str(int(line[3]) + (length * x)))))
                u = u + 1

        sod = (p - 1) + (q - 1) + (r - 1) + (s - 1) + (t - 1) + (u - 1)  # total number of torsions

        file1.write("\n \n \n")

        file1.write("\n \n \nPBMETAD ... \n")
        file1.write("ARG=")

        for i in range(p - 1):
            file1.write("ome" + str(i + 1) + ',')

        for i in range(q - 1):
            file1.write("psi" + str(i + 1) + ',')

        for i in range(r - 1):
            file1.write("phi" + str(i + 1) + ',')

        for i in range(s - 1):
            file1.write("nspe" + str(i + 1) + ',')

        for i in range(t - 1):
            file1.write("npme" + str(i + 1) + ',')

        for i in range(u - 2):
            file1.write("nlys" + str(i + 1) + ',')

        file1.write("nlys" + str((u - 2) + 1) + '\n')

        file1.write("SIGMA=")

        for i in range(sod - 1):
            file1.write("0.3,")

        file1.write("0.3" + '\n')

        file1.write("HEIGHT=1.2 #kJ/mol" + '\n')

        file1.write("PACE=500" + '\n')

        file1.write("BIASFACTOR=10" + '\n')

        file1.write("LABEL=pb" + '\n')

        file1.write("GRID_MIN=")
        for i in range(sod - 1):
            file1.write("-pi,")

        file1.write("-pi" + '\n')

        file1.write("GRID_MAX=")
        for i in range(sod - 1):
            file1.write("pi,")

        file1.write("pi" + '\n')

        file1.write("FILE=")

        for i in range(p - 1):
            file1.write("HILLS.ome" + str(i + 1) + ',')

        for i in range(q - 1):
            file1.write("HILLS.psi" + str(i + 1) + ',')

        for i in range(r - 1):
            file1.write("HILLS.phi" + str(i + 1) + ',')

        for i in range(s - 1):
            file1.write("HILLS.nspe" + str(i + 1) + ',')

        for i in range(t - 1):
            file1.write("HILLS.npme" + str(i + 1) + ',')

        for i in range(u - 2):
            file1.write("HILLS.nlys" + str(i + 1) + ',')

        file1.write("HILLS.nlys" + str((u - 2) + 1) + '\n')

        file1.write("... PBMETAD\n")
        
        ## everthing beyong this point is in one line 
        ## In other words, the format is PRINT <ARG=X, Y, Z....> <STRIDE> <COLVAR> (all in one line)
        
        file1.write("PRINT")

        file1.write(" ARG=")

        for i in range(p - 1):
            file1.write("ome" + str(i + 1) + ',')

        for i in range(q - 1):
            file1.write("psi" + str(i + 1) + ',')

        for i in range(r - 1):
            file1.write("phi" + str(i + 1) + ',')

        for i in range(s - 1):
            file1.write("nspe" + str(i + 1) + ',')

        for i in range(t - 1):
            file1.write("npme" + str(i + 1) + ',')

        for i in range(u - 2):
            file1.write("nlys" + str(i + 1) + ',')

        file1.write("nlys" + str((u - 2) + 1))

        file1.write(" STRIDE=500 FILE=COLVAR")


