#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds_BB_SC_9_15.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 800, 600

# 1 rows and 2 columns
set multiplot layout 2,2

set border linewidth 1
set tics nomirror
set xtics 0.2
set ytics 20

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Bond(nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:0.5]
set yrange [0:110]

set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'BB-SC.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "BB-SC Combined" lt rgb "#2243B6" linewidth 3 


set label 1 '(B)'
plot 'BB-NSPE.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "BB-NSPE" lt rgb "#2243B6" linewidth 3 

set label 1 '(C)' 
plot 'BB-PMEO.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "BB-PMEO" lt rgb "#2243B6" linewidth 3 


set label 1 '(D)'
plot 'BB-NLYS.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "BB-NLYS" lt rgb "#2243B6" linewidth 3 





unset multiplot
