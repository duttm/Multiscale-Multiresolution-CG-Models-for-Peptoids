#!/usr/bin/gnuplot
# looks ok with gnuplot 5.2


reset

set output 'P3_Angles_BB-SC_1.png'

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




set xlabel "Angle-YN-XBB1-A11(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(A)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/YN-XBB1-A11.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'YN-XBB1-A11.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1 

set xlabel "Angle-A11-XBB1-XBB2(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(B)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A11-XBB1-XBB2.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A11-XBB1-XBB2.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1 


set xlabel "Angle-XBB1-A11-A12(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(C)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB1-A11-A12.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB1-A11-A12.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



set xlabel "Angle-XBB1-A11-A13(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(D)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB1-A11-A13.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB1-A11-A13.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB1-XBB2-C11(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(E)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB1-XBB2-C11.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB1-XBB2-C11.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-C11-XBB2-XBB3(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(F)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/C11-XBB2-XBB3.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'C11-XBB2-XBB3.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB2-C11-C12(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(G)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB2-C11-C12.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB2-C11-C12.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB2-XBB3-A21(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(H)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB2-XBB3-A21.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB2-XBB3-A21.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-A21-XBB3-XBB4(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(I)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A21-XBB3-XBB4.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A21-XBB3-XBB4.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB3-A21-A22(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(J)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB3-A21-A22.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB3-A21-A22.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB3-A21-A23(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(K)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB3-A21-A23.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB3-A21-A23.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1




set xlabel "Angle-XBB3-XBB4-A31(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(L)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB3-XBB4-A31.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB3-XBB4-A31.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



set xlabel "Angle-A31-XBB4-XBB5(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(M)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A31-XBB4-XBB5.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A31-XBB4-XBB5.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1





set xlabel "Angle-XBB4-A31-A32(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(N)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-A31-A32.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-A31-A32.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-XBB4-A31-A33(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(O)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-A31-A33.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-A31-A33.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



set xlabel "Angle-XBB4-XBB5-B11(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(P)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB4-XBB5-B11.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB4-XBB5-B11.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-B11-XBB5-XBB6(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(Q)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/B11-XBB5-XBB6.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'B11-XBB5-XBB6.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-XBB5-B11-B12(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(R)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB5-B11-B12.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB5-B11-B12.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1

set xlabel "Angle-XBB5-XBB6-A41(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(S)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB5-XBB6-A41.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB5-XBB6-A41.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-A41-XBB6-XBB7(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(T)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/A41-XBB6-XBB7.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'A41-XBB6-XBB7.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-A41-XBB6-XBB7(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(U)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB6-A41-A42.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB6-A41-A42.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1


set xlabel "Angle-A41-XBB6-XBB7(degrees)" font "Times-New-Roman,10" offset -1,0.5 
set label 1 '(V)' at graph -0.38,0.85 font "Times-New-Roman,14"
plot 'References/XBB6-A41-A42.dist.tgt'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "AA" lt rgb "black" linewidth 1, 'XBB6-A41-A42.dist.new'  using  ($1*57.2958):($2 == 0.000 ? NaN : $2) with lines title "CG" lt rgb "red" linewidth 1



unset multiplot
