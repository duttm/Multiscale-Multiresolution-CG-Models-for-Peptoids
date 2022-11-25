#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Dihedrals_BB_9_16.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 900, 700

# 1 rows and 2 columns
set multiplot layout 4,3

set border linewidth 1
set tics nomirror
set xtics 90
set ytics 1

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Dihedral(degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [-180.0:180]
set yrange [0:1]



plot 'dihdedral-combined-bb.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "Dihedrals combined" lt rgb "#2243B6" linewidth 3 

alphabets = "B C D E F G H I"

do for [indx in "1 2 3 4 5 6 7 8"] {
  col1 = indx + 0
  col2 = indx + 1
  col3 = indx + 2
  col4 = indx + 3
  

  plot 'BB'.col1.'-BB'.col2.'-BB'.col3.'-BB'.col4.'.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title sprintf("BB%1.0f-BB%1.0f-BB%1.0f-BB%1.0f",col1,col2,col3,col4) lt rgb "#2243B6" linewidth 3  ;  
}


plot 'YN-BB1-BB2-BB3.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "YN-BB1-BB2-BB3" lt rgb "#2243B6" linewidth 3 


plot 'BB9-BB10-BB11-YC.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB9-BB10-BB11-YC" lt rgb "#2243B6" linewidth 3 


unset multiplot
