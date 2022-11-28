#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Diheds_BB_avg.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 800, 650

# 1 rows and 2 columns
set multiplot layout 2,2

set border linewidth 1
set tics nomirror
set xtics 90
set ytics 0.2

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "BB_X - BB_X_+_1 - BB_X_+_2 - BB_X_+_3 (degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,13" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [-180:180]
set yrange [0:0.6]




set label 1 '(A)' at graph -0.18,0.85 font "Times-New-Roman,14"
set label 2 "1 peptoid" at graph 0.4,1.05 font "Times-New-Roman,14"
plot 'AA/BB-BB-BB-BB.dist.1pep.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'CG/BB-BB-BB-BB.dist.1pep.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"


set label 1 '(B)' 
set label 2 "2 peptoids"
plot 'AA/BB-BB-BB-BB.dist.2pep.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'CG/BB-BB-BB-BB.dist.2pep.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"



set label 1 '(C)'
set label 2 "4 peptoids" 
plot 'AA/BB-BB-BB-BB.dist.4pep.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'CG/BB-BB-BB-BB.dist.4pep.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"


 
set label 1 '(D)'
set label 2 "8 peptoids" 
plot 'AA/BB-BB-BB-BB.dist.8pep.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'CG/BB-BB-BB-BB.dist.8pep.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"






