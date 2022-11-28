#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_e2e_AAvsCG_1pep.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 600, 400

# 1 rows and 2 columns
##set multiplot layout 2,2

set border linewidth 1
set tics nomirror
set xtics 0.5
set ytics 0.5

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Bond(nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:4.0]
set yrange [0:2]

##set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'bond-e2e-AA.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3,  'bond-e2e-CG.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3






##unset multiplot
