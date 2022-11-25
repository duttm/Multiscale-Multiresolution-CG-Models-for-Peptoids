#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds_NLYS_9_15.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 700, 350

# 1 rows and 2 columns
set multiplot layout 1,2

set border linewidth 1
set tics nomirror
set xtics 0.2
set ytics 50

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Bond(nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:0.5]
set yrange [0:100]

set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,12"
plot 'NLYS1-NLYS2.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NLYS1-NLYS2" lt rgb "#2243B6" linewidth 3 


set label 1 '(B)'
plot 'NLYS2-NLYS3.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NLYS2-NLYS3" lt rgb "#2243B6" linewidth 3 




unset multiplot
