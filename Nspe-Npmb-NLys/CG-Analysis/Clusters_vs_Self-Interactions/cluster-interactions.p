#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'clusters-interactions.png'

##set term post portrait enhanced color 

set encoding iso_8859_1
set term postscript eps enhanced color

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 800, 600

# 1 rows and 2 columns
#set multiplot layout 2,3

set border linewidth 1
set tics nomirror
set xtics 5000
set ytics 10

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Distance (nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Number of Clusters" font "Times-New-Roman,14" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:22000]
set yrange [0:50]




set xlabel "Timesteps {\327} 1000" font "Times-New-Roman,14" offset -1,0.5 


set y2tics 0, 10
set ytics nomirror
set y2lab "Normalized Interactions" offset -1, graph -0.00 font "Times-New-Roman,14"

plot 'all-in.txt' using  1:($2 == 0.00 ? NaN : $2) axis x1y1 with lines title "Clusters" lt rgb "black" linewidth 3,  'all-in.txt'  using  1:($3 == 0.00 ? NaN : $3/(64*8)) axis x1y2 with lines title "Nspe-Nspe" lt rgb "red" linewidth 3 dashtype "-", 'all-in.txt'  using  1:($4 == 0.00 ? NaN : $4/(64*2)) axis x1y2 with lines title "Npmb-Npmb" lt rgb "blue" linewidth 3 dashtype "-", 'all-in.txt'  using  1:($5 == 0.00 ? NaN : $5/(64*2)) axis x1y2 with lines title "NLys-NLys" lt rgb "green" linewidth 3 dashtype "-"



##unset multiplot
