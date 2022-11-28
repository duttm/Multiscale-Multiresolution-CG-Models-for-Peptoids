#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

filename = "packing_factor"
analysis = "alignment"

xaxis = "Nspe-Nspe, r(nm)"
yaxis = "Distribution"

set output analysis.'-nspe-1.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 800, 650

# 1 rows and 2 columns
set multiplot layout 2,3

set border linewidth 1
set tics nomirror
set xtics 0.5
set ytics 5

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xlabel xaxis font "Times-New-Roman,12" offset -1,0.5 

set ylabel yaxis font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



##set logscale x 2
set tics nomirror
set xrange [0:1.5]
set yrange [0:10]

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
set label 2 "2 peptoids" at graph 0.3,1.05 font "Times-New-Roman,13"
plot ''.filename.'/'.res1.'-'.res2.'.dist.'.filename.'.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA' ,\
''.filename.'/'.res1.'-'.res2.'.dist.new'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG' ,\



filename = "4pep"
analysis = "e2e"

set label 1 '(B)' 
set label 2 "4 peptoids"
plot ''.filename.'/'.res1.'-'.res2.'.dist.'.filename.'.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA' ,\
''.filename.'/'.res1.'-'.res2.'.dist.new'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG' ,\


filename = "8pep"
analysis = "e2e"

set label 1 '(C)' 
set label 2 "8 peptoids"
plot ''.filename.'/'.res1.'-'.res2.'.dist.'.filename.'.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA' ,\
 ''.filename.'/'.res1.'-'.res2.'.dist.new'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG' ,\


filename = "64pep"
analysis = "e2e"

set label 1 '(D)' 
set label 2 "64 peptoids"
set origin 0.1, 0
plot ''.filename.'/'.res1.'-'.res2.'.dist.'.filename.'.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA' ,\
 ''.filename.'/'.res1.'-'.res2.'.dist.new'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG' ,\


filename = "128pep"
analysis = "e2e"

set label 1 '(E)' 
set label 2 "128 peptoids"
set origin 0.5, 0
plot ''.filename.'/'.res1.'-'.res2.'.dist.'.filename.'.tgt'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'black' title 'AA' ,\
 ''.filename.'/'.res1.'-'.res2.'.dist.new'  using 1:($2 == 0.0 ? NaN : $2) with lines linewidth 3 linecolor rgb 'red' dashtype "-" title 'CG' ,\




##with lines title "Runtime(Seconds)" lt rgb "black" linewidth 2

unset multiplot
