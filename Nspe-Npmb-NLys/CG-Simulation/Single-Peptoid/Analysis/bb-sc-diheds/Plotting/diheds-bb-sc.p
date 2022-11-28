#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Diheds_BB-SC_1.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 1000, 800

# 1 rows and 2 columns
set multiplot layout 5,5

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
set xrange [-180:180]
set yrange [0:1]



set xlabel "A53-A51-BB7-BB8" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(0)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A53-A51-BB7-BB8.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A53-A51-BB7-BB8.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "YN-BB1-A11-A12" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(1)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YN-BB1-A11-A12.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YN-BB1-A11-A12.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A43-A41-BB6-BB7" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(2)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A43-A41-BB6-BB7.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A43-A41-BB6-BB7.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB1-BB2-C11-C12" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(3)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB1-BB2-C11-C12.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB1-BB2-C11-C12.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB11-YC-A81-A82" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(4)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB11-YC-A81-A82.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB11-YC-A81-A82.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A33-A31-XBB4-XBB5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(5)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A33-A31-XBB4-XBB5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A33-A31-XBB4-XBB5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB9-BB10-A71-A73" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(6)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB9-BB10-A71-A73.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB9-BB10-A71-A73.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB8-BB9-A61-A62" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(7)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB8-BB9-A61-A62.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB8-BB9-A61-A62.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB3-BB4-A31-A32" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(8)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB3-BB4-A31-A32.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB3-BB4-A31-A32.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB10-BB11-B21-B22" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(9)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB10-BB11-B21-B22.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB10-BB11-B21-B22.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A13-A11-BB1-BB2" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(10)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A13-A11-BB1-BB2.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A13-A11-BB1-BB2.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB4-BB5-B11-B12" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(11)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB4-BB5-B11-B12.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB4-BB5-B11-B12.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A83-A81-YC-BB11" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(12)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A83-A81-YC-BB11.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A83-A81-YC-BB11.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB2-BB3-A21-A22" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(13)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB2-BB3-A21-A22.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB2-BB3-A21-A22.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB6-BB7-A51-A52" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(14)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB6-BB7-A51-A52.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB6-BB7-A51-A52.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A73-A71-BB10-BB11" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(15)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A73-A71-BB10-BB11.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A73-A71-BB10-BB11.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A63-A61-BB9-BB10" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(16)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A63-A61-BB9-BB10.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A63-A61-BB9-BB10.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "A23-A21-BB3-BB4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(17)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A23-A21-BB3-BB4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A23-A21-BB3-BB4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB7-BB8-C21-C22" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(18)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB7-BB8-C21-C22.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB7-BB8-C21-C22.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "BB5-BB6-A41-A42" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(19)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/BB5-BB6-A41-A42.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'BB5-BB6-A41-A42.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


