import sys
import matplotlib.pyplot as plt

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]


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
    

plt.title("Cluster Count")
plt.xlabel('Time Steps'+ ' X ' + str(sampling))
plt.ylabel('Number of Clusters')
plt.plot(y_axis, store, color="red")

##plt.show()    
plt.savefig(sys.stdout.buffer)    
##print(store)

    
