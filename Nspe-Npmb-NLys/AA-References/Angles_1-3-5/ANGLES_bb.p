#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_BB_9_16.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,14" fontscale 1.0 size 900, 700

# 1 rows and 2 columns
set multiplot layout 4,3

set border linewidth 1
set tics nomirror
set xtics 90
set ytics 1

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Angle(degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:180]
set yrange [0:2]



set label 1 '(A)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB-angles-combined.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "angles combined" lt rgb "#2243B6" linewidth 3 

set label 1 '(B)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB1-BB2-BB3.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB1-BB2-BB3" lt rgb "#2243B6" linewidth 3 


set label 1 '(C)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB2-BB3-BB4.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB2-BB3-BB4" lt rgb "#2243B6" linewidth 3 


set label 1 '(D)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB3-BB4-BB5.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB3-BB4-BB5" lt rgb "#2243B6" linewidth 3 


set label 1 '(E)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB4-BB5-BB6.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB4-BB5-BB6" lt rgb "#2243B6" linewidth 3 


set label 1 '(F)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB5-BB6-BB7.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB5-BB6-BB7" lt rgb "#2243B6" linewidth 3 


set label 1 '(G)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB6-BB7-BB8.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB6-BB7-BB8" lt rgb "#2243B6" linewidth 3 

set label 1 '(H)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB7-BB8-BB9.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB7-BB8-BB9" lt rgb "#2243B6" linewidth 3 


set label 1 '(I)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB8-BB9-BB10.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB8-BB9-BB10" lt rgb "#2243B6" linewidth 3 

set label 1 '(J)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB9-BB10-BB11.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB9-BB10-BB11" lt rgb "#2243B6" linewidth 3 

set label 1 '(K)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'YN-BB1-BB2.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "YN-BB1-BB2" lt rgb "#2243B6" linewidth 3 


set label 1 '(L)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'BB10-BB11-YC.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "BB10-BB11-YC" lt rgb "#2243B6" linewidth 3 












unset multiplot
