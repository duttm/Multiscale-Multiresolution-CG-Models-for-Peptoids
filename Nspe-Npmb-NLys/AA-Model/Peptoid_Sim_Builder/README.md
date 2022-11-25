# Purpose of this folder is to run multi-peptoid simulations

Prerequisites:
1. Modified Charmm FF folder. 
2. Plumed file
3. Gromacs input files for 1 peptoid.


How to run:

1. You need to add the number of peptoids manually in .top file
2. run ./driver.bash 'box dimension' 'number of peptoids to add'
  
Please note: if the number of peptoids to add = 0, you will be running a single peptoid simulation.
