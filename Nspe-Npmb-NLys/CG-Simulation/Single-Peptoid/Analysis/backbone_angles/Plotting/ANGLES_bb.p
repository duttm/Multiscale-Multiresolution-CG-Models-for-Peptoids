#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_BB.png'

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


set xlabel "Angle(degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:180]
set yrange [0:2]




set xlabel "Angle-1-2-3(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(B)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB1-BB2-BB3.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB1-BB2-BB3.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1 

set xlabel "Angle-2-3-4(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(C)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB2-BB3-BB4.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB2-BB3-BB4.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1 


set xlabel "Angle-3-4-5(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(D)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB3-BB4-BB5.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB3-BB4-BB5.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-4-5-6(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(E)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB4-BB5-BB6.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB4-BB5-BB6.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-5-6-7(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(F)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB5-BB6-BB7.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB5-BB6-BB7.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-6-7-8(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(G)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB6-BB7-BB8.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB6-BB7-BB8.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-7-8-9(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(H)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB7-BB8-BB9.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB7-BB8-BB9.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-8-9-10(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(I)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB8-BB9-BB10.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB8-BB9-BB10.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-9-10-11(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(J)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB9-BB10-BB11.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB9-BB10-BB11.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-YN-1-2(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(K)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YN-BB1-BB2.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YN-BB1-BB2.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



set xlabel "Angle-10-11-YC(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(L)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB10-BB11-YC.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB10-BB11-YC.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1












unset multiplot
