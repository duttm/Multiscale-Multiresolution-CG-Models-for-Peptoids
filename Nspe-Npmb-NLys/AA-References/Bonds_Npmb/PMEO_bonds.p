#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds_PMEO_9_15.png'

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
set xrange [0.15:0.27]
set yrange [0:200]

set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,12"
plot 'PMEO-aromatic-combined.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO-aromatic-combined" lt rgb "#2243B6" linewidth 3 


set label 1 '(B)'
plot 'PMEO2-PMEO3.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO2-PMEO3" lt rgb "#2243B6" linewidth 3 

set label 1 '(C)'
plot 'PMEO2-PMEO4.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO2-PMEO4" lt rgb "#2243B6" linewidth 3 


set label 1 '(D)' at graph -0.18,0.85 font "Times-New-Roman,12"
plot 'PMEO3-PMEO4.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO3-PMEO4" lt rgb "#2243B6" linewidth 3 


set label 1 '(E)' 
plot 'PMEO1-PMEO2.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO1-PMEO2" lt rgb "#2243B6" linewidth 3 


set label 1 '(F)'
plot 'PMEO3-PMEO5.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "PMEO3-PMEO5" lt rgb "#2243B6" linewidth 3 





unset multiplot
