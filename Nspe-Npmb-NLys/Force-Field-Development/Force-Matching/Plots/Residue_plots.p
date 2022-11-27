#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output imagename

##set term post portrait enhanced color 


set terminal pngcairo  enhanced   font "Times New Roman,14" fontscale 1.0 size 1000,1000 


# 1 rows and 2 columns
set multiplot layout DIMX,DIMY

set border linewidth 1
set tics nomirror
##set xtics 1
##set ytics 10

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics




set xlabel "r(nm)" font "Times-New-Roman,14" offset -1,0.5 

set ylabel "Energy" font "Times-New-Roman,14" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1



set xrange [*:*]
set yrange [*:*]


filenames = "table_I_I "
filenameslit = "I-I "
do for [i=1:N] {

    set label 1 word(filenameslit,i) at graph 0.2,1.05 font "Times-New-Roman,12"
    plot 'I/'.word(filenames, i).".xvg"  using  1:($6 == 0 ? NaN : $6) with lines lt rgb "black" linewidth 3 not
}


unset multiplot



