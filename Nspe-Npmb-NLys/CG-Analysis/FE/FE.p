#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'rotational_barrier.png'

set term post portrait enhanced color 


##set terminal pngcairo  enhanced  transparent font "Times New Roman,12" fontscale 1.0 size 800,400 
set terminal pngcairo  enhanced  font "Times New Roman,12" fontscale 1.0 size 800,400 

# 1 rows and 2 columns
set multiplot layout 1,3

set border linewidth 1
set tics nomirror
set xtics 180
set ytics 5

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xzeroaxis linetype -1 linewidth 1
set ylabel "Energy (kT)" font "Times-New-Roman,14" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



set xrange [-180:180]
set yrange [0:40]


unset xlabel
set xlabel "{/Symbol w}_3 (degrees)" font "Times-New-Roman,14"

unset key
set label 1 '(A)' at graph -0.3,0.85 font "Times-New-Roman,14"

plot filename1  using  ($1*57.2958):($2 == 0 ? NaN : $2) with lines  lt rgb "black" linewidth 3 

set xlabel "{/Symbol w}_6 (degrees)" font "Times-New-Roman,14"
set label 1 '(B)' 

plot filename2  using  ($1*57.2958):($2 == 0 ? NaN : $2) with lines  lt rgb "black" linewidth 3 

set xlabel "{/Symbol w}_9 (degrees)" font "Times-New-Roman,14"
set label 1 '(C)'

plot filename3  using  ($1*57.2958):($2 == 0 ? NaN : $2) with lines  lt rgb "black" linewidth 3 


unset multiplot


