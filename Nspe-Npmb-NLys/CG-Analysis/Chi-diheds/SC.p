#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'sidechain_LYS.png'

set term post portrait enhanced color 


##set terminal pngcairo  enhanced  transparent font "Times New Roman,12" fontscale 1.0 size 800,400 
set terminal pngcairo  enhanced  font "Times New Roman,12" fontscale 1.0 size 400,400 

# 1 rows and 2 columns
##set multiplot layout 1,3

set border linewidth 1
set tics nomirror
set xtics 60
set ytics 0.01

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xzeroaxis linetype -1 linewidth 1
set ylabel "Distribution" font "Times-New-Roman,14" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



set xrange [-180:180]
set yrange [0:0.05]


unset xlabel
set xlabel "dihedral" font "Times-New-Roman,14"

unset key
set label 1 '(A)' at graph -0.25,0.85 font "Times-New-Roman,12"
set label 2 '(degrees)' at graph 0.3,-0.23 font "Times-New-Roman,12"
plot filename1  using  ($1):($2 == 0 ? NaN : $2) with lines  lt rgb "black" linewidth 3 

unset multiplot

