import numpy as np

T1, T2, T3= np.genfromtxt('FES_psi_ome.dat', unpack=True)

T3max = max(T3)
print(T3max)
