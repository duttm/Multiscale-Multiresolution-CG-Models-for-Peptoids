#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'Standard_vs_metaD_10-27-2022.png'

set term post portrait enhanced color 


##set terminal pngcairo  enhanced  transparent font "Times New Roman,12" fontscale 1.0 size 800,400 
set terminal pngcairo  enhanced  font "Times New Roman,12" fontscale 1.0 size 800,400 

# 1 rows and 2 columns
set multiplot layout 1,3

set border linewidth 1
set tics nomirror
set xtics 180
set ytics 0.5

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics





set ylabel "Distribution" font "Times-New-Roman,14" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



set xrange [-180:180]
set yrange [0:0.05]


unset xlabel
set xlabel "{/Symbol w}_3 (degrees)" font "Times-New-Roman,14"

set label 1 '(A)' at graph -0.20,0.85 font "Times-New-Roman,12"
#set label 2 '(degrees)' at graph 0.3,-0.23 font "Times-New-Roman,12"
plot '../ome3_nonmetaD.xvg'  using  ($1):($2 == 0 ? NaN : $2) with lines title "Standard MD" lt rgb "black" linewidth 3 , '../ome3_metaD.xvg' using   ($1):($2 == 0 ? NaN : $2)  with lines title "PBmetaD" lt rgb "red" linewidth 4 dashtype "-"

unset xlabel
set xlabel "{/Symbol w}_6 (degrees)" font "Times-New-Roman,14"

set label 1 '(B)'
plot '../ome6_nonmetaD.xvg'  using  ($1):($2 == 0 ? NaN : $2) with lines title "Standard MD" lt rgb "black" linewidth 3 , '../ome6_metaD.xvg' using  ($1):($2 == 0 ? NaN : $2) with lines title "PBmetaD" lt rgb "red" linewidth 4 dashtype "-"


unset xlabel
set xlabel "{/Symbol w}_9 (degrees)" font "Times-New-Roman,14"

set origin 0.65,0
set label 1 '(C)'
plot '../ome9_nonmetaD.xvg'  using  ($1):($2 == 0 ? NaN : $2) with lines title "Standard MD" lt rgb "black" linewidth 3 , '../ome9_metaD.xvg' using  ($1):($2 == 0 ? NaN : $2)  with lines title "PBmetaD" lt rgb "red" linewidth 4 dashtype "-"




unset multiplot


