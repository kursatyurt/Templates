#INITIALIZE
reset
set grid #to open grid
set key box top left 

#SELECT TERMINAL
set term pngcairo enhanced size 680,480 

set output 'output.png'
set xlabel 'xlabel'
set ylabel 'ylabel'
plot  'data.dat' u 1:2 ps 3 pt 7 title 'Experiment'
