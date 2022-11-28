#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

filename = "packing_factor"
analysis = "e2e"

xaxis = "End-to-end Distance (nm)"
yaxis = "Distribution"

set output analysis.'_all.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 800, 650

# 1 rows and 2 columns
set multiplot layout 2,2

set border linewidth 1
set tics nomirror
set xtics 1
set ytics 0.5

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xlabel xaxis font "Times-New-Roman,12" offset -1,0.5 

set ylabel yaxis font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



##set logscale x 2
set tics nomirror
set xrange [0:4]
set yrange [0:2]

set style line 1 \
    linecolor rgb 'black' \
    linetype 1 linewidth 1 \
    pointtype 7 pointsize 1
    
    
set style line 4 \
    linecolor rgb 'red' \
    linetype 1 linewidth 3 \
    dashtype "-" \
    pointtype 9 pointsize 1
    

##set key left top

filename = "1pep"
analysis = "e2e"



set label 1 '(A)' at graph -0.15,0.85 font "Times-New-Roman,12"
set label 2 "1 peptoid" at graph 0.4,1.05 font "Times-New-Roman,14"
plot ''.filename.'/'.filename.'-'.analysis.'-AA.dist.new'  using ($1):($2) with lines title "AA" lt rgb "black" linewidth 3 ,\
''.filename.'/'.filename.'-'.analysis.'-CG.dist.new'  using  ($1):($2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"




filename = "2pep"
analysis = "e2e"

set label 1 '(B)'
set label 2 "2 peptoids"
plot ''.filename.'/'.filename.'-'.analysis.'-AA-s3.dist.new'  using  ($1):($2) with lines title "AA" lt rgb "black" linewidth 3  ,\
''.filename.'/'.filename.'-'.analysis.'-CG-s3.dist.new'  using  ($1):($2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"



filename = "4pep"
analysis = "e2e"

set label 1 '(C)'
set label 2 "4 peptoids"
plot ''.filename.'/'.filename.'-'.analysis.'-AA-s2.dist.new'  using  ($1):($2) with lines title "AA" lt rgb "black" linewidth 3  ,\
''.filename.'/'.filename.'-'.analysis.'-CG.dist.new'  using  ($1):($2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"


filename = "8pep"
analysis = "e2e"

set label 1 '(D)'
set label 2 "8 peptoids"
plot ''.filename.'/'.filename.'-'.analysis.'-AA.dist.new'  using  ($1):($2) with lines title "AA" lt rgb "black" linewidth 3  ,\
''.filename.'/'.filename.'-'.analysis.'-CG.dist.new'  using  ($1):($2) with lines title "CG" lt rgb "red" linewidth 3 dashtype "-"




##with lines title "Runtime(Seconds)" lt rgb "black" linewidth 2

unset multiplot
