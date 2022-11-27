#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_BB-SC_2.png'

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


set xlabel "Angle(degrees)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:180]
set yrange [0:2]



set xlabel "XBB4-A31-A32" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(0)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-A31-A32.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-A31-A32.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB10-XBB11-B21" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(1)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB10-XBB11-B21.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB10-XBB11-B21.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB7-A51-A52" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(2)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB7-A51-A52.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB7-A51-A52.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB8-XBB9-A61" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(3)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB8-XBB9-A61.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB8-XBB9-A61.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB8-C21-C22" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(4)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB8-C21-C22.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB8-C21-C22.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB9-XBB10-A71" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(5)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB9-XBB10-A71.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB9-XBB10-A71.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB4-A31-A33" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(6)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-A31-A33.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-A31-A33.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "YN-XBB1-A11" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(7)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YN-XBB1-A11.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YN-XBB1-A11.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB5-XBB6-A41" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(8)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB5-XBB6-A41.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB5-XBB6-A41.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB11-YC-A81" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(9)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB11-YC-A81.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB11-YC-A81.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB9-A61-A62" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(10)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB9-A61-A62.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB9-A61-A62.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB4-XBB5-B11" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(11)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-XBB5-B11.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-XBB5-B11.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "YC-A81-A82" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(12)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YC-A81-A82.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YC-A81-A82.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB6-XBB7-A51" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(13)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB6-XBB7-A51.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB6-XBB7-A51.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB10-A71-A73" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(14)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB10-A71-A73.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB10-A71-A73.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB5-B11-B12" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(15)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB5-B11-B12.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB5-B11-B12.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB11-B21-B22" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(16)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB11-B21-B22.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB11-B21-B22.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "YC-A81-A83" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(17)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YC-A81-A83.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YC-A81-A83.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB3-XBB4-A31" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(18)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB3-XBB4-A31.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB3-XBB4-A31.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB7-XBB8-C21" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(19)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB7-XBB8-C21.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB7-XBB8-C21.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB6-A41-A42" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(20)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB6-A41-A42.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB6-A41-A42.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB6-A41-A43" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(21)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB6-A41-A43.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB6-A41-A43.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB9-A61-A63" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(22)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB9-A61-A63.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB9-A61-A63.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB7-A51-A53" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(23)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB7-A51-A53.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB7-A51-A53.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "XBB10-A71-A72" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(24)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB10-A71-A72.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB10-A71-A72.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

