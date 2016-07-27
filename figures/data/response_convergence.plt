set terminal postscript enhanced color portrait "Times-Roman,9"
set output "../response_convergence.ps"

set multiplot
set size 0.5,0.25
set key top right
set format y "%1.1e"

set origin 0.0,0.7
set title 'Response convergence CO'
set log y
set xrange [0:20]
set yrange [1.0e-7:1.0e1]
set ylabel 'residual'
set xlabel 'iteration'
plot 'response_convergence.dat' using 1:3 w lp lt 1 lw 1 lc 0 title "phi^{(0)}",\
'response_convergence.dat' using 1:2 w lp lt 3 lw 1 lc 0 title "phi^{(1)}",\
1.0e-5 w l lt 2 lw 1 lc 0 notitle
