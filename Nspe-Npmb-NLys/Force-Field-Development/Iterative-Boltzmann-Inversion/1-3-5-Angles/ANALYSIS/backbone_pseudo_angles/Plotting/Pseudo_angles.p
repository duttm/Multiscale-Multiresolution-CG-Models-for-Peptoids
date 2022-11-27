#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_Pseudo.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 1000, 800

# 1 rows and 2 columns
set multiplot layout 3,3

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



set xlabel "BB7-BB9-BB11" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(0)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB7-BB9-BB11.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB7-BB9-BB11.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB6-BB8-BB10" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(1)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB6-BB8-BB10.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB6-BB8-BB10.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB5-BB7-BB9" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(2)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB5-BB7-BB9.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB5-BB7-BB9.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB8-BB10-YC" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(3)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB8-BB10-YC.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB8-BB10-YC.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB1-BB3-BB5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(4)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB1-BB3-BB5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB1-BB3-BB5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB4-BB6-BB8" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(5)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB4-BB6-BB8.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB4-BB6-BB8.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB3-BB5-BB7" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(6)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB3-BB5-BB7.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB3-BB5-BB7.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB2-BB4-BB6" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(7)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB2-BB4-BB6.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB2-BB4-BB6.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "YN-BB2-BB4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(8)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YN-BB2-BB4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YN-BB2-BB4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1
