#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_SC-SC.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 1000, 800

# 1 rows and 2 columns
set multiplot layout 4,4

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
set yrange [0:3]



set xlabel "PMEO3-PMEO4-PMEO2" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(0)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO3-PMEO4-PMEO2.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO3-PMEO4-PMEO2.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO2-PMEO3-PMEO4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(1)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO2-PMEO3-PMEO4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO2-PMEO3-PMEO4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO4-PMEO3-PMEO5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(2)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO4-PMEO3-PMEO5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO4-PMEO3-PMEO5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO4-PMEO2-PMEO3" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(3)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO4-PMEO2-PMEO3.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO4-PMEO2-PMEO3.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE1-NSPE3-NSPE4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(4)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE1-NSPE3-NSPE4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE1-NSPE3-NSPE4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NLYS1-NLYS2-NLYS3" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(5)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NLYS1-NLYS2-NLYS3.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NLYS1-NLYS2-NLYS3.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE3-NSPE4-NSPE5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(6)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE3-NSPE4-NSPE5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE3-NSPE4-NSPE5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE1-NSPE3-NSPE5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(7)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE1-NSPE3-NSPE5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE1-NSPE3-NSPE5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO2-PMEO3-PMEO5" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(8)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO2-PMEO3-PMEO5.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO2-PMEO3-PMEO5.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE2-NSPE1-NSPE3" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(9)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE2-NSPE1-NSPE3.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE2-NSPE1-NSPE3.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO1-PMEO2-PMEO4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(10)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO1-PMEO2-PMEO4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO1-PMEO2-PMEO4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE4-NSPE5-NSPE3" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(11)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE4-NSPE5-NSPE3.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE4-NSPE5-NSPE3.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "NSPE5-NSPE3-NSPE4" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(12)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/NSPE5-NSPE3-NSPE4.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'NSPE5-NSPE3-NSPE4.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "PMEO1-PMEO2-PMEO3" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(13)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/PMEO1-PMEO2-PMEO3.dist.tgt' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'PMEO1-PMEO2-PMEO3.dist.new' using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


