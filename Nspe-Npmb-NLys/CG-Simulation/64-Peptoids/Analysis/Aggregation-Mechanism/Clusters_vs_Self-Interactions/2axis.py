import sys
import matplotlib.pyplot as plt

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]

## execution example: python 2axis.py cluster-count_merged.txt NLYS2-NLYS2_merged.txt 128  > cluster_vs_NLYS


fig, ax = plt.subplots()

file1 = open(inputfilename, 'r')
Lines = file1.readlines()
  
store = []
y = 0
y_axis = []
sampling=1000


for line in Lines:
    store.append(float(line.strip()))
    y_axis.append(y)
    y+=1
    

##ax.plot.title("Interaction Count (NLYS)")
##ax.plot.xlabel('Time Steps'+ ' X ' + str(sampling))
##plt.ylabel('Number of Interactions')
ax.plot(y_axis, store, color="red", label="Clusters")
ax.set_ylabel('Number of Clusters')
ax.set_xlabel('Time Steps'+ ' X ' + str(sampling))

##ax.legend()    

# Generate a new Axes instance, on the twin-X axes (same position)
ax2 = ax.twinx()

inputfilename = sys.argv[2]
NOR = sys.argv[3]



file1 = open(inputfilename, 'r')
Lines = file1.readlines()
  
store = []
y = 0
y_axis = []
sampling=1000


for line in Lines:
    store.append(float(line.strip())/float(NOR))
    y_axis.append(y)
    y+=1

ax2.plot(y_axis, store, color="green", label="Interactions")

ax2.set_ylabel('Number of Interactions')
ax2.set_yticks([0,5,10,15,20,25,30,35,40])
##ax2.set_xlabel('Time Steps'+ ' X ' + str(sampling))
##ax.legend(lns, lbs, loc=0)
fig.legend() 
plt.savefig(sys.stdout.buffer)    

