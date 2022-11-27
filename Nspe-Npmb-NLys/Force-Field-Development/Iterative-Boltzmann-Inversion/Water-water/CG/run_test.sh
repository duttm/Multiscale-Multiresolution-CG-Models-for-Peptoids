#!/bin/bash


rm -r step*  inverse.log

module load gromacs/2018


echo 'running csg_inverse --options "settings.xml"'
csg_inverse --options settings_CG.xml

