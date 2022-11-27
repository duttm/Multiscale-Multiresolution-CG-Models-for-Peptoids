#!/bin/bash


python directorymaker.py ## Keep all files in table. The python code will create folder for residues and transfer the appropriate files. 

mkdir I ## some issue
cp table/table_I_I.xvg I/

./plotter.bash ## follow the prompts

python writer.py
