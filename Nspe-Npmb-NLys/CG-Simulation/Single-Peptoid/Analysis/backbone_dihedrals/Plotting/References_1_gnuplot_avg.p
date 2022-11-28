#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Diheds_BB_avg.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 600, 350

# 1 rows and 2 columns
##set multiplot layout 4,3

set border linewidth 1
set tics nomirror
set xtics 90
set ytics 0.2

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Dihedral(degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [-180:180]
set yrange [0:1]



set xlabel "BB-BB-BB-BB" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(0)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB-BB-BB-BB.dist.1pep.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB-BB-BB-BB.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



