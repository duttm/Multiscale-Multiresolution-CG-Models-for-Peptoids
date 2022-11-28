#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

filename = "packing_factor"
analysis = "Water-water"

xaxis = "Water-water, r(nm)"
yaxis = "Distribution"

set output analysis.'-128.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 600, 400

# 1 rows and 2 columns
##set multiplot layout 1,3

set border linewidth 1
set tics nomirror
set xtics 0.2
set ytics 1

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xlabel xaxis font "Times-New-Roman,12" offset -1,0.5 

set ylabel yaxis font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



##set logscale x 2
set tics nomirror
set xrange [0:1]
set yrange [0:4]

set style line 1 \
    linecolor rgb 'black' \
    linetype 1 linewidth 1 \
    pointtype 7 pointsize 1
    
    
set style line 4 \
    linecolor rgb 'red' \
    linetype 1 linewidth 3 \
    dashtype "-" \
    pointtype 9 pointsize 1
    
    
set style line 2 \
    linecolor rgb 'green' \
    linetype 1 linewidth 1 \
    pointtype 9 pointsize 1
        

set key right top

filename = "2pep"
analysis = "e2e"
res1 = "NSPE4"
res2 = "NSPE4"


set label 1 '(A)' at graph -0.15,0.85 font "Times-New-Roman,12"

plot '../pure-water/H-H.dist.charmm.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA Pure Water-Water' ,\
'H-H.dist.128pep.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'blue' title 'AA Water-Water in 128 peptoid system' ,\
'H-H.dist.128pep.new'  using 1:($2 < 0.00001 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG Water-Water in 128 peptoid system' ,\






##with lines title "Runtime(Seconds)" lt rgb "black" linewidth 2

unset multiplot
