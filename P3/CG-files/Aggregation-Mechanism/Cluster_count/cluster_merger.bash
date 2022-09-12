#!/bin/bash


 
file1=$1 ## first file

file2=$2 ## second file

file3=$3 ## third file



awk ' {if ( $1 !~ /[#@]/) print $2 } ' $file1 > "${file1}_copy"
awk ' {if ( $1 !~ /[#@]/) print $2 } ' $file2 > "${file2}_copy"
awk ' {if ( $1 !~ /[#@]/) print $2 } ' $file3 > "${file3}_copy"

cat  "${file1}_copy" "${file2}_copy" "${file3}_copy"> merged.txt

rm "${file1}_copy" "${file2}_copy" "${file3}_copy"

python cluster_plotter.py merged.txt > clusters.png




