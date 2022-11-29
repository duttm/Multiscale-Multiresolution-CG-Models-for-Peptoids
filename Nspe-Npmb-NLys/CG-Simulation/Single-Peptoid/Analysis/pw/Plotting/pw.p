#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_pw_AAvsCG_1pep.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 800, 600

# 1 rows and 2 columns
set multiplot layout 2,3

set border linewidth 1
set tics nomirror
set xtics 0.5
set ytics 1

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Distance (nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:1.0]
set yrange [0:1.5]

set xlabel "Backbone (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'BBstandard-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'BBstandard-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1 dashtype "-"

set xlabel "Cterm (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(B)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'Cterm-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'Cterm-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Nterm (nm)" font "Times-New-Roman,12" offset -1,0.5 


set label 1 '(C)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'Nterm-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'Nterm-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE3 (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(D)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'NSPE3-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'NSPE3-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO3 (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(E)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'PMEO3-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'PMEO3-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NLYS2 (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(F)' at graph -0.18,0.85 font "Times-New-Roman,14"
plot 'NLYS2-H.dist.target'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'NLYS2-H.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1





##unset multiplot