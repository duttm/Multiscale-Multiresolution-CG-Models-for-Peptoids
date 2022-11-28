#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonded.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 800, 350

# 1 rows and 2 columns
set multiplot layout 1,3

set border linewidth 1
set tics nomirror
set xtics 0.2
set ytics 10

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Bond(nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:0.5]
set yrange [0:40]

set xlabel "Bond (nm)" font "Times-New-Roman,12" offset -1,0.5 

set label 1 '(A)' at graph -0.29,0.85 font "Times-New-Roman,14"
plot 'tgt/BOND.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3,  'new/BOND.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"

set xrange [0.0:180]
set yrange [0:2]

set xtics 60
set ytics 0.5

set xlabel "Angle (degrees)" font "Times-New-Roman,12" offset -1,0.5 
set label 1 '(B)' 
plot 'tgt/ANGLE.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'new/ANGLE.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-" 


set xrange [-180:180]
set yrange [0:0.5]

set xtics 90
set ytics 0.2

set xlabel "Dihedral (degrees)" font "Times-New-Roman,12" offset -1,0.5
set label 1 '(C)' 
plot 'tgt/DIHEDRAL.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 3, 'new/DIHEDRAL.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"



unset multiplot
