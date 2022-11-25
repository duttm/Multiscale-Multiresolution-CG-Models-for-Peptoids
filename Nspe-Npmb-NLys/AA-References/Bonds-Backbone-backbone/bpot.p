#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds_9_15.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 900, 700

# 1 rows and 2 columns
set multiplot layout 4,3

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
set yrange [0:40]

set label 1 '(A)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'bond.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond combined" lt rgb "#2243B6" linewidth 3 


set label 1 '(B)'
plot 'bond1.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond1" lt rgb "#2243B6" linewidth 3 

set label 1 '(C)' 
plot 'bond2.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond2" lt rgb "#2243B6" linewidth 3 


set label 1 '(D)'
plot 'bond3.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond3" lt rgb "#2243B6" linewidth 3 

set label 1 '(E)' 
plot 'bond4.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond4" lt rgb "#2243B6" linewidth 3 


set label 1 '(F)' 
plot 'bond5.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond5" lt rgb "#2243B6" linewidth 3 


set label 1 '(G)' 
plot 'bond6.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond6" lt rgb "#2243B6" linewidth 3 



set label 1 '(H)' 
plot 'bond7.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond7" lt rgb "#2243B6" linewidth 3 


set label 1 '(I)' 
plot 'bond8.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond8" lt rgb "#2243B6" linewidth 3 

set label 1 '(J)' 
plot 'bond9.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond9" lt rgb "#2243B6" linewidth 3 

set label 1 '(K)' 
plot 'bond10.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "bond10" lt rgb "#2243B6" linewidth 3 



unset multiplot
