import sys
import matplotlib.pyplot as plt

arguments = len(sys.argv) - 1
inputfilename = sys.argv[1]
NOR = sys.argv[2]

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
    

plt.title("Interaction Count (PMEO)")
plt.xlabel('Time Steps'+ ' X ' + str(sampling))
plt.ylabel('Number of Interactions')
plt.plot(y_axis, store, color="red")

##plt.show()    
plt.savefig(sys.stdout.buffer)    
##print(store)

    
