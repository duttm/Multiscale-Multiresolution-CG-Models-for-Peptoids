#!/bin/bash


## This will not work out of the box. Consider this as a list of bash scripts in the order of execution.

./model.bash ## Obtain the initial gro file. If you are running this for the first time, you will get several errors. This is due to conflict between C22 and C36 parameters. Resolve these error in the C36 folder. Rename the folder and keep it somewhere safe. 

./model_1.bash ## Short run on Desktop


./model_2.bash ## Production run on Supercomputer.
