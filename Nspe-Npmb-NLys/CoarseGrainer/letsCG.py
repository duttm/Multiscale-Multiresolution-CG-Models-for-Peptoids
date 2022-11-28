import sys
import re
import numpy as np
import os
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d

## The DFS code has been adapted from https://www.geeksforgeeks.org/depth-first-search-or-dfs-for-a-graph/

class Graph:

    # init function to declare class variables
    def __init__(self, V):
        self.V = V
        self.adj = [[] for i in range(V)]

    def DFSUtil(self, temp, v, visited):

        # Mark the current vertex as visited
        visited[v] = True

        # Store the vertex to list
        temp.append(v)

        # Repeat for all vertices adjacent
        # to this vertex v
        for i in self.adj[v]:
            if visited[i] == False:
                # Update the list
                temp = self.DFSUtil(temp, i, visited)
        return temp

    # method to add an undirected edge
    def addEdge(self, v, w):
        self.adj[v].append(w)
        self.adj[w].append(v)

    # Method to retrieve connected components
    # in an undirected graph
    def connectedComponents(self):
        visited = []
        cc = []
        for i in range(self.V):
            visited.append(False)
        for v in range(self.V):
            if visited[v] == False:
                temp = []
                cc.append(self.DFSUtil(temp, v, visited))
        return cc


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


def read_file(filename, NOF, a, size):
    y = 0
    f = open(filename, "r")
    lines = f.readlines()

    result = []
    for x in lines:
        result.append(x)
        y = y + 1

    f.close()

    ##print(y)
    counter = 0
    refine = []
    x = 0

    while x <= (a + 3) * (NOF + 1):
        if x == 0 or x == 1:  # skip first 2 lines
            counter = counter + 1
            x = x + 1
            # print("x is %s and counter in %s in stage 1" % (x, counter))

        elif 2 <= counter <= a + 1:
            refine.append(result[x])
            x = x + 1
            counter = counter + 1
            # print("x is %s and counter in %s in stage 2" % (x, counter))

        elif counter == a + 2:
            counter = 2
            x = x + 3
            if x > y:
                break
            # print("x is %s and counter in %s in stage 3" % (x, counter))

        else:
            print(0)

    file_out = open("array.txt", "w")

    # admit values into a large 2D array

    rows, cols = (a * NOF, 7)
    array = [[0 for i in range(cols)] for j in range(rows)]

    for i in range(a * NOF):
        # print(i)
        id1 = refine[i][0:5]
        id2 = refine[i][5:9]
        id3 = refine[i][9:15]
        id4 = refine[i][15:20]

        x = refine[i][20:28]
        y = refine[i][28:36]
        z = refine[i][36:44]

        array[i][0] = id1
        array[i][1] = id2
        array[i][2] = id3
        array[i][3] = id4
        array[i][4] = x
        array[i][5] = y
        array[i][6] = z

    for i in range(rows):
        file_out.writelines(str(array[i]) + '\n')
        # view array.txt to check
    file_out.close()

    return array


def readbackbone():
    testsite_array = []
    with open('backbone.txt') as my_file:
        for line in my_file:
            testsite_array.append(line)

    return testsite_array


def readmonomer(filename):
    f = open(filename, "r")
    lines = f.readlines()
    result = []
    for x in lines:
        result.append(int(x.split(' ')[2]))
    f.close()

    return result


def show_backbone(array_2D, backbone, NOF, a, boxx, boxy, boxz):
    bb_gro = []
    rows, cols = (a * NOF, 7)

    for i in range(len(backbone)):

        for j in range(rows):

            if int(backbone[i]) == int(array_2D[j][3]):
                bb_gro.append(array_2D[j][0:7])

    fig = plt.figure(figsize=[10, 10])
    ax = plt.axes(projection='3d')

    zline = []
    yline = []
    xline = []

    for i in range(len(bb_gro)):
        xline.append(float(bb_gro[i][4]))
        yline.append(float(bb_gro[i][5]))
        zline.append(float(bb_gro[i][6]))

    ax.plot3D(xline, yline, zline, 'gray')

    ##ax.scatter3D(xline, yline, zline, s=100, c='Green')

    ##plt.show()

    return bb_gro, ax


def show_monomer(array_2D, backbone, NOF, a, boxx, boxy, boxz, ax):
    bb_gro = []
    rows, cols = (a * NOF, 7)

    for i in range(len(backbone)):

        for j in range(rows):

            if int(backbone[i]) == int(array_2D[j][3]):
                bb_gro.append(array_2D[j][0:7])

    ##fig = plt.figure(figsize=[10, 10])
    ##ax = plt.axes(projection='3d')

    zline = []
    yline = []
    xline = []

    for i in range(len(bb_gro)):
        xline.append(float(bb_gro[i][4]))
        yline.append(float(bb_gro[i][5]))
        zline.append(float(bb_gro[i][6]))

    ##ax.plot3D(bbx, bby, bbz, 'gray')
    ##ax.plot3D(xline, yline, zline, 'gray')

    ax.scatter3D(xline, yline, zline, s=100, c='blue')

    plt.show()

    return bb_gro


def bcm(filename_2):
    f = open(filename_2, "r")
    lines = f.readlines()
    result = []

    for x in lines:
        result.append(x.split(' '))

    f.close()

    return result


def create_bcm(bonds_connect_matrix, a):
    g = Graph(a)

    for i in range(len(bonds_connect_matrix)):
        g.addEdge(int(bonds_connect_matrix[i][0]) - 1, int(bonds_connect_matrix[i][1]) - 1)
        ##print(int(bonds_connect_matrix[i][0]), int(bonds_connect_matrix[i][1]))

    cc = g.connectedComponents()

    return cc


def create_monomer_files(cc, a):
    for i in range(len(cc)):
        ##print("monomer unit %i is '\n" %(i+1))

        monomer = "monomer" + str(i + 1) + ".txt"
        file1 = open(monomer, "a")

        for j in range(len(cc[i])):
            file1.write(str(i + 1) + " " + str(j + 1) + " " + str(int(cc[i][j]) + 1) + '\n')

        file1.close()


def rename_monomer_file(cc, filename_3):
    for i in range(len(cc)):
        monomer = "monomer" + str(i + 1) + ".txt"

        f = open(monomer)
        first = f.readline()
        catch = first.split()

        f = open(filename_3, "r")
        lines = f.readlines()
        result = []
        for x in lines:
            if int(x.split('\t')[0]) == int(catch[2]):
                rename = x.split('\t')[1].strip()
                ##print(rename)
        f.close()

        os.rename(monomer, str(rename + '.txt'))


def printline(array_2D, filename_3, a):

    rows, cols = (a, 7)

    new_file = "cg.txt"
    mass_file = "mass.txt"
    file1 = open(new_file, "a")
    file2 = open(mass_file, "a")

    f = open(filename_3, "r")
    lines = f.readlines()
    result = []
    for x in lines:
        filename_4 = x.split('\t')[1].strip() + '.txt'
        f1 = open(filename_4, "r")
        lines_1 = f1.readlines()
        result_1 = []
        file1.write(str(x.split('\t')[1].strip()) + ": ")
        file2.write(str(x.split('\t')[1].strip()) + ": ")
        for x1 in lines_1:
            for j in range(rows):

                if int(x1.split(' ')[2].strip()) == int(array_2D[j][3]):
                    file1.write(str(array_2D[j][0].strip())+":"+str(array_2D[j][1].strip())+":"+str(array_2D[j][2].strip())+' ')

                    res = [re.findall(r'(\w+?)(\d+)', str(array_2D[j][2]))[0]]

                    if str(res[0][0]) == 'N':
                        file2.write(str(14)+' ')
                    elif str(res[0][0]) == 'C':
                        file2.write(str(12)+' ')
                    elif str(res[0][0]) == 'O':
                        file2.write(str(16)+' ')
                    elif str(res[0][0]) == 'H':
                        file2.write(str(1)+' ')
                    else:
                        file2.write('X' + ' ')



        file1.write('\n')
        file2.write('\n')

    file1.close()
    file2.close()
    f1.close()
    f.close()

    return new_file, mass_file


def writemol(new_file, mass_file, filename_3):

    mol = "mol.txt"
    file1 = open(mol, "a")

    f = open(new_file, "r")
    lines = f.readlines()
    result = []
    count = 1
    for x in lines:

        ### Write Main Topology

        file1.write("<cg_bead>"+'\n')
        
     
            
        new1 = x.split(' ')[0]
        new1 = new1.replace(":", "")
        
        if "B" in str(new1):
            file1.write("<name>" + "BCG" + str(count) + "</name>" + '\n')
            
        else: 
            file1.write("<name>" + "SCG" + str(count) + "</name>" + '\n')
        
        file1.write("<type>" + str(new1) + "</type>" + '\n')
        file1.write("<mapping>" +  str(new1) + "</mapping>" + '\n')
        file1.write("<beads>" + '\n')

        new = x.split(' ')[1:]
        file1.write(str(' '.join(new)))
        file1.write("</beads>" + '\n')
        file1.write("</cg_bead>" + '\n')
        file1.write('\n \n \n')

        count = count + 1


    f.close()
    file1.close()

    masses = "masses.txt"
    file2 = open(masses, "a")

    f = open(mass_file, "r")
    lines = f.readlines()
    result = []
    count = 1
    for x in lines:
        file2.write("<map>" + '\n')

        new1 = x.split(' ')[0]
        new1 = new1.replace(":", "")
        file2.write("<name>" + str(new1) + "</name>" + '\n')

        file2.write("<weights>" + '\n')
        new = x.split(' ')[1:]
        file2.write(str(' '.join(new)))
        file2.write("</weights>" + '\n')
        file2.write("</map>" + '\n')
        file2.write('\n \n \n')

    file2.close()




# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

    # count the arguments
    arguments = len(sys.argv) - 1

    # output argument-wise

    ###### command line section ####################

    filename = sys.argv[1]
    print('The name of the file is %s' % (filename))
    NOF = int(sys.argv[2])
    print('No. of frames in trajectory is %s' % (NOF))
    a = int(sys.argv[3])
    print('No. of elements in a single frame is %s' % (a))
    size = int(sys.argv[4])
    print('No. of elements in a single molecule is %s' % (size))
    boxx = int(sys.argv[5])
    boxy = int(sys.argv[6])
    boxz = int(sys.argv[7])
    print('Dimensions of box is %s %s %s' % (boxx, boxy, boxz))
    filename_2 = sys.argv[8]
    monomer_name = str(sys.argv[10]) + ".txt"
    filename_3 = sys.argv[9]
    array_2D = read_file(filename, NOF, a, size)

    backbone = readbackbone()

    bb_coordinates, ax = show_backbone(array_2D, backbone, NOF, a, boxx, boxy, boxz)

    bonds_connect_matrix = bcm(filename_2)

    cc = create_bcm(bonds_connect_matrix, a)

    create_monomer_files(cc, a)

    rename_monomer_file(cc, filename_3)

    single_monomer = readmonomer(monomer_name)

    monomer_coordinates = show_monomer(array_2D, single_monomer, NOF, a, boxx, boxy, boxz, ax)

    new_file, mass_file = printline(array_2D, filename_3, a)

    writemol(new_file, mass_file, filename_3)
    
    ##last exec: 1. rm SC*.txt BB*.txt cg.txt mass.txt mol.txt masses.txt
    ##           2. python  main.py srug_ini.gro 1 280 280 5 5 5 bonds_bb_sc.txt index_identifier.txt BB4
