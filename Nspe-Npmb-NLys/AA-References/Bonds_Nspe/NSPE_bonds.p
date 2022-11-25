#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds_NSPE_9_15.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 900, 600

# 1 rows and 2 columns
set multiplot layout 2,4

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
set xrange [0.0:0.3]
set yrange [0:200]

set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,12"
plot 'NSPE-combined-aromatic.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE-aromatic-combined" lt rgb "#2243B6" linewidth 3 


set label 1 '(B)' 
plot 'NSPE3-NSPE4.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE3-NSPE4" lt rgb "#2243B6" linewidth 3 


set label 1 '(C)'
plot 'NSPE3-NSPE5.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE3-NSPE5" lt rgb "#2243B6" linewidth 3 

set label 1 '(D)'
plot 'NSPE4-NSPE5.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE4-NSPE5" lt rgb "#2243B6" linewidth 3 


set label 1 '(E)' at graph -0.18,0.85 font "Times-New-Roman,12"
plot 'NSPE1-NSPE2.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE1-NSPE2" lt rgb "#2243B6" linewidth 3 


set label 1 '(F)'
plot 'NSPE1-NSPE3.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "NSPE1-NSPE3" lt rgb "#2243B6" linewidth 3 





unset multiplot
