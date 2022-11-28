#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Bonds.png'

set term post portrait enhanced color 

set terminal pngcairo  enhanced font "Times New Roman,12" fontscale 1.0 size 1000, 800

# 1 rows and 2 columns
set multiplot layout 4,4

set border linewidth 1
set tics nomirror
set xtics 0.2
set ytics 20

# if tics don't do it for you then you can comment above and uncomment this one
# unset tics


set xlabel "Bond(nm)" font "Times-New-Roman,12" offset -1,0.5 

set ylabel "Distribution" font "Times-New-Roman,12" offset 1.5,0.6
                


set xzeroaxis linetype -1 linewidth 1


set tics nomirror
set xrange [0.0:0.5]
set yrange [0:40]

set xlabel "Bond-Common(nm)" font "Times-New-Roman,10" offset -1,0.5 

set label 1 '(A)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'Reference/bond.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-1(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(B)'
plot 'Reference/bond1.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond1.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-2(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(C)' 
plot 'Reference/bond2.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond2.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-3(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(D)'
plot 'Reference/bond3.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond3.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Bond-4(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(E)' 
plot 'Reference/bond4.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond4.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-5(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(F)' 
plot 'Reference/bond5.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond5.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-6(nm)" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(G)' 
plot 'Reference/bond6.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond6.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1
 

set xlabel "Bond-7(nm)" font "Times-New-Roman,10" offset -1,0.5


set label 1 '(H)' 
plot 'Reference/bond7.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond7.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Bond-8(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(I)' 
plot 'Reference/bond8.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond8.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Bond-9(nm)" font "Times-New-Roman,10" offset -1,0.5

set label 1 '(J)' 
plot 'Reference/bond9.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond9.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Bond-10(nm)" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(K)' 
plot 'Reference/bond10.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bond10.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-CB(nm)" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(L)' 
plot 'Reference/bondCB.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bondCB.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Bond-NB(nm)" font "Times-New-Roman,10" offset -1,0.5
set label 1 '(M)' 
plot 'Reference/bondNB.dist.tgt'  using  1:($2 == 0.00 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1,  'bondNB.dist.new'  using  1:($2 == 0.00 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1




unset multiplot
