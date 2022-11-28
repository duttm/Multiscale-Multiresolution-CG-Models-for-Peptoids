set terminal png font "Times New Roman,14" size 700,600
set output imagename
set title "Free Energy Surface"
unset key
set pm3d map
set vi map


set xlabel xnameis
set ylabel ynameis
set cblabel "{/Symbol D}G [kcal/mol]" offset -1.5,0

##set cbrange[0:10]
set xtics 60
set ytics 60
set xrange [0:360]
set yrange [0:360]
##set pm3d map interpolate 2,2 implicit at s
##set cbtics (0,0.25,0.5,1,2,4,8,10)
##set palette defined (0 'red', 0.25 'yellow', 0.5 '#84fa84', 1 '#228B22', 2.5 '#00FFFF', 5 '#89CFF0', 10 '#0047AB', 20 'white')

##set palette model RGB defined (0 'red', 0.25 'red', 0.5 'yellow', 1 'light-green', 2.5 'green', 5 'cyan', 10 'blue', 15 'blue', 16 'blue', 17 'blue', 18 'blue', 19 'purple', 20 'white')


##set palette model RGB defined (0 'red', 0.25 'orange', 0.5 'yellow', 1 'light-green', 2.5 'green', 5 'cyan', 10 'blue', 11 'white')

##set palette defined (0 "red",\
                     0.25 "yellow",\
                     0.5 "light-green",\
                     1.0 "green",\
                     2.5 "light-blue",\
                     5.0 "blue",\
                     10.0 "purple")


set palette defined (0 "red",\
                     0.02 "red",\
                     0.02 "red",\
                     0.024 "red",\
                     0.024 "red",\
                     0.025 "yellow",\
                     0.025 "yellow",\
                     0.042 "yellow",\
                     0.042 "yellow",\
                     0.0421 "light-green",\
                     0.0421 "light-green",\
                     0.047 "light-green",\
                     0.047 "light-green",\
                     0.0915 "light-green",\
                     0.0915 "light-green",\
                     0.0916 "green",\
                     0.0916 "green",\
                     0.1 "green",\
                     0.1 "green",\
                     0.12 "green",\
                     0.12 "green",\
                     0.2 "green",\
                     0.2 "green",\
                     0.229 "green",\
                     0.229 "green",\
                     0.23 "cyan",\
                     0.23 "cyan",\
                     0.28 "cyan",\
                     0.28 "cyan",\
                     0.35 "cyan",\
                     0.35 "cyan",\
                     0.456 "cyan",\
                     0.456 "cyan",\
                     0.457 "blue",\
                     0.457 "blue",\
                     0.48 "blue",\
                     0.48 "blue",\
                     0.499 "blue",\
                     0.499 "blue",\
                     0.5 "blue",\
                     0.501 "blue",\
                     0.501 "blue",\
                     0.502 "blue",\
                     0.502 "blue",\
                     0.53 "blue",\
                     0.53 "blue",\
                     0.54 "blue",\
                     0.54 "blue",\
                     0.55 "blue",\
                     0.55 "blue",\
                     0.915 "blue",\
                     0.915 "blue",\
                     0.916 "white",\
                     0.916 "white",\
                     1.00 "white",\
                     1.00 "white")
                               
                     
##set logscale cb
##set cbtics (0.0,0.25,0.5,1,2.5,5,10)
set cbtics ("0" 0.0,"0.25" 0.25,"0.5" 0.5,"1" 1,"2.5" 2.5,"5" 5,"10" 10,">10" 11) font "Times New Roman,10"



splot filename # Inputdatei
